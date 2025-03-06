import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rankings/src/domain/authentication/facades/i_authentication_facade.dart';
import 'package:rankings/src/infrastructure/authentication/data_sources/remote/firebase_auth_data_source.dart';
import 'package:rankings/src/infrastructure/authentication/facades/authentication_facade.dart';

final authFacadeProvider = Provider<IAuthenticationFacade>((ref) {
  return AuthenticationFacade(
    remoteDataSource: FirebaseAuthDataSource(),
  );
});
