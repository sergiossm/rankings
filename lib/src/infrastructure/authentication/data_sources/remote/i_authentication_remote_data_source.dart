import 'package:rankings/src/infrastructure/authentication/dtos/authentication_user_dto.dart';

abstract class IAuthenticationRemoteDataSource {
  Future<AuthenticationUserDto?> signUpWithEmailAndPassword(
    String email,
    String password,
  );
  Future<AuthenticationUserDto?> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<AuthenticationUserDto?> signInWithGoogle();
  AuthenticationUserDto? getSignedInUser();
  Stream<AuthenticationUserDto?> authStateChanges();
  Future<void> sendPasswordResetEmail(String email);
  Future<void> signOut();
}
