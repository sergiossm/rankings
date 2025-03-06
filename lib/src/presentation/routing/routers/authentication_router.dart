import 'package:go_router/go_router.dart';
import 'package:rankings/src/presentation/authentication/authentication_page.dart';
import 'package:rankings/src/presentation/routing/routes/app_routes.dart';

abstract class AuthenticationRouter {
  static GoRoute get route => GoRoute(
        path: Routes.authentication.path,
        name: Routes.authentication.name,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const AuthenticationPage(),
        ),
      );
}
