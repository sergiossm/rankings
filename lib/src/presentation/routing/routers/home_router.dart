import 'package:go_router/go_router.dart';
import 'package:rankings/src/presentation/home/home_page.dart';
import 'package:rankings/src/presentation/routing/routes/app_routes.dart';

abstract class HomeRouter {
  static GoRoute get route => GoRoute(
        path: Routes.home.path,
        name: Routes.home.name,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const HomePage(),
        ),
      );
}
