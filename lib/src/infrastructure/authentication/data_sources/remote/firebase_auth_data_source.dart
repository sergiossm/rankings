import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rankings/src/infrastructure/authentication/data_sources/remote/i_authentication_remote_data_source.dart';
import 'package:rankings/src/infrastructure/authentication/dtos/authentication_user_dto.dart';

class FirebaseAuthDataSource implements IAuthenticationRemoteDataSource {
  final firebase.FirebaseAuth _firebaseAuth = firebase.FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'profile',
    ],
  );

  @override
  Stream<AuthenticationUserDto?> authStateChanges() {
    return _firebaseAuth.authStateChanges().map((firebase.User? user) {
      if (user == null) return null;
      return AuthenticationUserDto(
        id: user.uid,
        email: user.email ?? '',
        displayName: user.displayName,
        photoUrl: user.photoURL,
      );
    });
  }

  @override
  AuthenticationUserDto? getSignedInUser() {
    final user = _firebaseAuth.currentUser;
    if (user == null) return null;

    return AuthenticationUserDto(
      id: user.uid,
      email: user.email ?? '',
      displayName: user.displayName,
      photoUrl: user.photoURL,
    );
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }
  
  @override
  Future<AuthenticationUserDto?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return AuthenticationUserDto(
      id: userCredential.user?.uid ?? '',
      email: userCredential.user?.email ?? '',
      displayName: userCredential.user?.displayName,
      photoUrl: userCredential.user?.photoURL,
    );
  }

  @override
  Future<AuthenticationUserDto?> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();

    // Obtain the auth details from the request
    final googleAuth = await googleUser?.authentication;
    if (googleAuth == null) return null;

    // Create a new credential
    final credential = firebase.GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the AuthenticationUserDto
    final user =
        (await _firebaseAuth.signInWithCredential(credential)).user;
    final id = user?.uid;
    final email = user?.email;
    final displayName = user?.displayName;
    final photoUrl = user?.photoURL;
    if (id == null || email == null) return null;

    return AuthenticationUserDto(
      id: id,
      email: email,
      displayName: displayName,
      photoUrl: photoUrl,
    );
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.disconnect();
    await _firebaseAuth.signOut();
  }

  @override
  Future<AuthenticationUserDto?> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return AuthenticationUserDto(
      id: userCredential.user?.uid ?? '',
      email: userCredential.user?.email ?? '',
      displayName: userCredential.user?.displayName,
      photoUrl: userCredential.user?.photoURL,
    );
  }
}
