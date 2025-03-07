import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rankings/src/application/authentication/providers.dart';
import 'package:rankings/src/presentation/routing/routers/authentication_router.dart';
import 'package:rankings/src/presentation/routing/routers/home_router.dart';
import 'package:rankings/src/presentation/routing/routers/splash_router.dart';
import 'package:rankings/src/presentation/routing/routes/app_routes.dart';
import 'package:rankings/src/presentation/routing/widgets/go_router_refresh_stream.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  final authRepository = ref.watch(authenticationFacadeProvider);
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.splash.path,
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    // observers: [
    //   AnalyticsNavigatorObserver(
    //     ref.read(analyticsFacadeProvider),
    //   ),
    // ],
    redirect: (context, state) {
      final isAuthenticated = authRepository.getSignedInUser().isSome();
      if (!isAuthenticated) {
        return Routes.authentication.path;
      }

      // If the user is authenticated and the path is the authentication path, redirect to the home path
      if (isAuthenticated &&
          state.uri.path.startsWith(Routes.authentication.path)) {
        return Routes.home.path;
      }

      return null;
    },
    routes: [
      // Splash
      SplashRouter.route,

      // Authentication
      AuthenticationRouter.route,

      // Home
      ...HomeRouter.routes,
    ],
  );
});
