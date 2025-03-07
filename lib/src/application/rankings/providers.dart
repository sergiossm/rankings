import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openai_dart/openai_dart.dart';
import 'package:rankings/src/application/authentication/providers.dart';
import 'package:rankings/src/application/rankings/controllers/ranking_controller.dart';
import 'package:rankings/src/application/rankings/states/ranking_state.dart';
import 'package:rankings/src/domain/rankings/repositories/i_ranking_repository.dart';
import 'package:rankings/src/env.dart';
import 'package:rankings/src/infrastructure/rankings/data_sources/remote/openai_ranking_data_source.dart';
import 'package:rankings/src/infrastructure/rankings/repositories/ranking_repository.dart';

/// Provider for the ranking repository
final rankingRepositoryProvider = Provider<IRankingRepository>((ref) {
  return RankingRepository(
    remoteDataSource: OpenAIRankingDataSource(
      openAIClient: OpenAIClient(
        apiKey: Env.openaiApiKey,
        organization: 'org-0DwmHfBpXct3hB6VGltDLzT7',
      ),
      modelName: ChatCompletionModels.gpt4oMini,
    ),
  );
});

/// Provider for the ranking controller
final rankingControllerProvider =
    StateNotifierProvider.autoDispose<RankingController, RankingState>((ref) {
      return RankingController(
        rankingRepository: ref.watch(rankingRepositoryProvider),
        authenticationFacade: ref.watch(authenticationFacadeProvider),
      );
    });
