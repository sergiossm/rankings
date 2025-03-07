import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rankings/src/application/authentication/providers.dart';
import 'package:rankings/src/application/authentication/states/authentication_state.dart';
import 'package:rankings/src/domain/authentication/facades/i_authentication_facade.dart';

/// Provider for the authentication controller
final authenticationControllerProvider =
    StateNotifierProvider<AuthenticationController, AuthenticationState>(
      (ref) => AuthenticationController(
        authenticationFacade: ref.watch(authenticationFacadeProvider),
      ),
    );

/// Controller that manages authentication state
class AuthenticationController extends StateNotifier<AuthenticationState> {
  /// Creates a new instance of [AuthenticationController]
  AuthenticationController({
    required IAuthenticationFacade authenticationFacade,
  }) : _authenticationFacade = authenticationFacade,
       super(const AuthenticationState.initial());

  /// The authentication facade
  final IAuthenticationFacade _authenticationFacade;

  /// Signs the user in with Google
  Future<void> signInWithGoogle() async {
    (await _authenticationFacade.signInWithGoogle()).fold(
      (failure) => state = const AuthenticationState.unauthenticated(),
      (success) => state = const AuthenticationState.authenticated(),
    );
  }

  /// Signs the user out
  Future<void> signOut() async {
    await _authenticationFacade.signOut();

    state = const AuthenticationState.unauthenticated();
  }
}
