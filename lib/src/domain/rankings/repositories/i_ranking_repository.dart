import 'package:fpdart/fpdart.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_question.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_result.dart';
import 'package:rankings/src/domain/rankings/failures/ranking_failure.dart';

/// Repository interface for managing ranking questions and results
abstract class IRankingRepository {
  /// Create a new ranking question
  Future<Either<RankingFailure, Unit>> createQuestion(RankingQuestion question);

  /// Get a ranking result for a specific question
  /// This will trigger the AI to generate a ranking
  Future<Either<RankingFailure, RankingResult>> getRankingResult(
    RankingQuestion question,
  );

  /// Get a list of questions created by a user
  Future<Either<RankingFailure, List<RankingQuestion>>> getQuestionsByUser(
    UniqueId userId,
  );

  /// Get a specific question by ID
  Future<Either<RankingFailure, RankingQuestion>> getQuestionById(UniqueId id);

  /// Get a specific ranking result by ID
  Future<Either<RankingFailure, RankingResult>> getResultById(UniqueId id);

  /// Delete a question and its associated result
  Future<Either<RankingFailure, Unit>> deleteQuestion(UniqueId id);
}
