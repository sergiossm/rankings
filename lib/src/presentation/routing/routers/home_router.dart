import 'package:go_router/go_router.dart';
import 'package:rankings/src/presentation/home/ask_question_page.dart';
import 'package:rankings/src/presentation/home/home_page.dart';
import 'package:rankings/src/presentation/routing/routes/app_routes.dart';
import 'package:rankings/src/presentation/routing/widgets/modal_page.dart';

abstract class HomeRouter {
  static List<GoRoute> get routes => [
        GoRoute(
          path: Routes.home.path,
          name: Routes.home.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const HomePage(),
          ),
          routes: [
            GoRoute(
              path: Routes.homeAskQuestion.path,
              name: Routes.homeAskQuestion.name,
              pageBuilder: (context, state) {
                return ModalPage<void>(
                  key: state.pageKey,
                  child: const AskQuestionPage(),
                );
              },
            ),
          ],
        ),
      ];
}
