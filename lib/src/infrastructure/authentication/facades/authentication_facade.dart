import 'package:fpdart/fpdart.dart';
import 'package:rankings/src/domain/authentication/entities/authentication_user.dart';
import 'package:rankings/src/domain/authentication/facades/i_authentication_facade.dart';
import 'package:rankings/src/domain/authentication/value_objects/password.dart';
import 'package:rankings/src/domain/core/failures/failure.dart';
import 'package:rankings/src/domain/core/value_objects/email_address.dart';
import 'package:rankings/src/infrastructure/authentication/data_sources/remote/i_authentication_remote_data_source.dart';

class AuthenticationFacade implements IAuthenticationFacade {
  AuthenticationFacade({
    required IAuthenticationRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final IAuthenticationRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, Option<AuthenticationUser>>>
      signUpWithEmailAndPassword(
    EmailAddress email,
    Password password,
  ) async {
    try {
      final userDto = await _remoteDataSource.signUpWithEmailAndPassword(
        email.getOrCrash(),
        password.getOrCrash(),
      );

      return right(optionOf(userDto?.toDomain()));
    } on Exception catch (_) {
      return left(
        const Failure('Error signing up user with email and password'),
      );
    }
  }

  @override
  Future<Either<Failure, Option<AuthenticationUser>>>
      signInWithEmailAndPassword(
    EmailAddress email,
    Password password,
  ) async {
    try {
      final userDto = await _remoteDataSource.signInWithEmailAndPassword(
        email.getOrCrash(),
        password.getOrCrash(),
      );

      return right(optionOf(userDto?.toDomain()));
    } on Exception catch (_) {
      return left(
        const Failure('Error signing in user with email and password'),
      );
    }
  }

  @override
  Future<Either<Failure, Option<AuthenticationUser>>> signInWithGoogle() async {
    try {
      final authUser = await _remoteDataSource.signInWithGoogle();
      if (authUser == null) return right(none());

      return right(optionOf(authUser.toDomain()));
    } on Exception catch (_) {
      return left(const Failure('Error signing in user with Google'));
    }
  }

  @override
  Option<AuthenticationUser> getSignedInUser() {
    return optionOf(_remoteDataSource.getSignedInUser()?.toDomain());
  }

  @override
  Stream<Option<AuthenticationUser>> authStateChanges() =>
      _remoteDataSource.authStateChanges().map(
        (authUser) {
          return optionOf(authUser?.toDomain());
        },
      );

  @override
  Future<Either<Failure, Unit>> sendPasswordResetEmail(
    EmailAddress email,
  ) async {
    try {
      await _remoteDataSource.sendPasswordResetEmail(email.getOrCrash());
      return right(unit);
    } on Exception catch (_) {
      return left(Failure('Error sending password reset email to $email'));
    }
  }

  @override
  Future<Unit> signOut() async {
    await _remoteDataSource.signOut();
    return unit;
  }
}
