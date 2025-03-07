import 'package:fpdart/fpdart.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_question.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_result.dart';
import 'package:rankings/src/domain/rankings/failures/ranking_failure.dart';
import 'package:rankings/src/domain/rankings/repositories/i_ranking_repository.dart';
import 'package:rankings/src/infrastructure/rankings/data_sources/remote/i_ranking_remote_data_source.dart';
import 'package:rankings/src/infrastructure/rankings/dtos/ranking_question_dto.dart';

class RankingRepository implements IRankingRepository {
  RankingRepository({required IRankingRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final IRankingRemoteDataSource _remoteDataSource;

  // In-memory storage for questions and results
  // In a real app, you would use a database or cloud storage
  final Map<String, RankingQuestion> _questions = {};
  final Map<String, RankingResult> _results = {};

  @override
  Future<Either<RankingFailure, Unit>> createQuestion(
    RankingQuestion question,
  ) async {
    try {
      _questions[question.id.getOrCrash()] = question;
      return right(unit);
    } on Exception catch (_) {
      return left(const RankingFailure.unableToCreate());
    }
  }

  @override
  Future<Either<RankingFailure, RankingResult>> getRankingResult(
    RankingQuestion question,
  ) async {
    try {
      // Generate the ranking using OpenAI
      final rankingResult = await _remoteDataSource.generateRanking(
        RankingQuestionDto.fromDomain(question),
      );

      // If the result is null, return an error
      if (rankingResult == null) {
        return left(const RankingFailure.unexpected());
      }

      return right(rankingResult.toDomain());
    } on Exception catch (_) {
      return left(const RankingFailure.unexpected());
    }
  }

  @override
  Future<Either<RankingFailure, List<RankingQuestion>>> getQuestionsByUser(
    UniqueId userId,
  ) async {
    try {
      final userQuestions =
          _questions.values
              .where((question) => question.userId == userId)
              .toList();
      return right(userQuestions);
    } on Exception catch (_) {
      return left(const RankingFailure.unexpected());
    }
  }

  @override
  Future<Either<RankingFailure, RankingQuestion>> getQuestionById(
    UniqueId id,
  ) async {
    try {
      final question = _questions[id.getOrCrash()];
      if (question == null) {
        return left(const RankingFailure.notFound());
      }
      return right(question);
    } on Exception catch (_) {
      return left(const RankingFailure.unexpected());
    }
  }

  @override
  Future<Either<RankingFailure, RankingResult>> getResultById(
    UniqueId id,
  ) async {
    try {
      final result = _results[id.getOrCrash()];
      if (result == null) {
        return left(const RankingFailure.notFound());
      }
      return right(result);
    } on Exception catch (_) {
      return left(const RankingFailure.unexpected());
    }
  }

  @override
  Future<Either<RankingFailure, Unit>> deleteQuestion(UniqueId id) async {
    try {
      final questionId = id.getOrCrash();

      // Remove the question
      _questions.remove(questionId);

      // Remove any associated results
      _results.removeWhere(
        (_, result) => result.question.id.getOrCrash() == questionId,
      );

      return right(unit);
    } on Exception catch (_) {
      return left(const RankingFailure.unableToDelete());
    }
  }
}
