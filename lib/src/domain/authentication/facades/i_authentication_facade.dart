import 'package:fpdart/fpdart.dart';
import 'package:rankings/src/domain/authentication/entities/authentication_user.dart';
import 'package:rankings/src/domain/authentication/value_objects/password.dart';
import 'package:rankings/src/domain/core/failures/failure.dart';
import 'package:rankings/src/domain/core/value_objects/email_address.dart';

abstract class IAuthenticationFacade {
  Future<Either<Failure, Option<AuthenticationUser>>>
      signInWithEmailAndPassword(
    EmailAddress email,
    Password password,
  );
  Future<Either<Failure, Option<AuthenticationUser>>>
      signUpWithEmailAndPassword(
    EmailAddress email,
    Password password,
  );
  Future<Either<Failure, Option<AuthenticationUser>>> signInWithGoogle();
  Option<AuthenticationUser> getSignedInUser();
  Stream<Option<AuthenticationUser>> authStateChanges();
  Future<Either<Failure, Unit>> sendPasswordResetEmail(EmailAddress email);
  Future<Unit> signOut();
}
