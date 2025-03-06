import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.authenticated() = _Authenticated;
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
}

extension AuthenticationStateX on AuthenticationState {
  bool get isAuthenticated =>
      whenOrNull(
        authenticated: () => true,
        unauthenticated: () => false,
      ) ??
      false;
}
