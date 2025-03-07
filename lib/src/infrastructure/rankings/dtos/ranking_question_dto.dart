import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_dto.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_question.dart';
import 'package:rankings/src/domain/rankings/value_objects/question_text.dart';

part 'ranking_question_dto.freezed.dart';
part 'ranking_question_dto.g.dart';

@freezed
class RankingQuestionDto with _$RankingQuestionDto implements IDto {
  const factory RankingQuestionDto({
    required String id,
    required String questionText,
    required DateTime createdAt,
    required String userId,
  }) = _RankingQuestionDto;
  factory RankingQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$RankingQuestionDtoFromJson(json);

  const RankingQuestionDto._();

  factory RankingQuestionDto.fromDomain(RankingQuestion domain) {
    return RankingQuestionDto(
      id: domain.id.getOrCrash(),
      questionText: domain.questionText.getOrCrash(),
      createdAt: domain.createdAt,
      userId: domain.userId.getOrCrash(),
    );
  }

  @override
  RankingQuestion toDomain() {
    return RankingQuestion(
      id: UniqueId.fromUniqueString(id),
      questionText: QuestionText(questionText),
      createdAt: createdAt,
      userId: UniqueId.fromUniqueString(userId),
    );
  }
}
