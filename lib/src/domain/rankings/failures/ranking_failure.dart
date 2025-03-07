import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_failure.freezed.dart';

@freezed
class RankingFailure with _$RankingFailure {
  const factory RankingFailure.unexpected() = _Unexpected;
  const factory RankingFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory RankingFailure.unableToCreate() = _UnableToCreate;
  const factory RankingFailure.unableToUpdate() = _UnableToUpdate;
  const factory RankingFailure.unableToDelete() = _UnableToDelete;
  const factory RankingFailure.notFound() = _NotFound;
  const factory RankingFailure.aiServiceUnavailable() = _AiServiceUnavailable;
  const factory RankingFailure.invalidQuestion() = _InvalidQuestion;
  const factory RankingFailure.timeout() = _Timeout;
}
