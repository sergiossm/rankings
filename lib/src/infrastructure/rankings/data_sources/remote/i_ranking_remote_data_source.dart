import 'package:rankings/src/infrastructure/rankings/dtos/ranking_question_dto.dart';
import 'package:rankings/src/infrastructure/rankings/dtos/ranking_result_dto.dart';

abstract class IRankingRemoteDataSource {
  Future<RankingResultDto?> generateRanking(RankingQuestionDto question);
}
