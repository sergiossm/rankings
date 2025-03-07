import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_entity.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/value_objects/question_text.dart';

part 'ranking_question.freezed.dart';

@freezed
class RankingQuestion with _$RankingQuestion implements IEntity {
  const factory RankingQuestion({
    required UniqueId id,
    required QuestionText questionText,
    required DateTime createdAt,
    required UniqueId userId,
  }) = _RankingQuestion;
}
