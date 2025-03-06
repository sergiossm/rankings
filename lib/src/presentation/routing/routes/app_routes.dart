import 'package:rankings/src/presentation/routing/routes/authentication_routes.dart';
import 'package:rankings/src/presentation/routing/routes/home_routes.dart';
import 'package:rankings/src/presentation/routing/routes/splash_routes.dart';

enum Routes {
  splash(SplashRoutes.base),
  authentication(AuthenticationRoutes.base),
  home(HomeRoutes.base),
  homeAskQuestion(HomeRoutes.askQuestion);

  const Routes(this.path);

  final String path;
}
