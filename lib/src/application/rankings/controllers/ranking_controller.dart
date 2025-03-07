import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rankings/src/application/core/extensions/riverpod_extensions.dart';
import 'package:rankings/src/application/rankings/states/ranking_state.dart';
import 'package:rankings/src/domain/authentication/facades/i_authentication_facade.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_question.dart';
import 'package:rankings/src/domain/rankings/repositories/i_ranking_repository.dart';
import 'package:rankings/src/domain/rankings/value_objects/question_text.dart';

class RankingController extends StateNotifier<RankingState> {
  RankingController({
    required IRankingRepository rankingRepository,
    required IAuthenticationFacade authenticationFacade,
  }) : _rankingRepository = rankingRepository,
       _authenticationFacade = authenticationFacade,
       super(RankingState.initial());

  final IRankingRepository _rankingRepository;
  final IAuthenticationFacade _authenticationFacade;

  Future<void> getRanking(String text) async {
    setStateSafe(() => state = RankingState.loading());

    final userOption = _authenticationFacade.getSignedInUser();

    await userOption.fold(
      () {
        // Handle case when no user is signed in
        setStateSafe(
          () =>
              state = RankingState.error(
                Exception('User not authenticated'),
                StackTrace.current,
              ),
        );
      },
      (user) async {
        final questionText = QuestionText(text);
        final question = RankingQuestion(
          id: UniqueId(),
          questionText: questionText,
          createdAt: DateTime.now(),
          userId: user.id,
        );

        final resultEither = await _rankingRepository.getRankingResult(
          question,
        );

        resultEither.fold(
          (failure) {
            setStateSafe(
              () => state = RankingState.error(failure, StackTrace.current),
            );
          },
          (result) {
            setStateSafe(() => state = RankingState.loaded(result));
          },
        );
      },
    );
  }

  void reset() {
    setStateSafe(() => state = RankingState.initial());
  }
}
