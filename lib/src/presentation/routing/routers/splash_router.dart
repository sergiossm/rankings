import 'package:go_router/go_router.dart';
import 'package:rankings/src/presentation/routing/routes/app_routes.dart';
import 'package:rankings/src/presentation/splash/splash_page.dart';

abstract class SplashRouter {
  static GoRoute get route => GoRoute(
        path: Routes.splash.path,
        name: Routes.splash.name,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const SplashPage(),
        ),
      );
}
