import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_dto.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_result.dart';
import 'package:rankings/src/infrastructure/rankings/dtos/ranked_item_dto.dart';
import 'package:rankings/src/infrastructure/rankings/dtos/ranking_question_dto.dart';

part 'ranking_result_dto.freezed.dart';
part 'ranking_result_dto.g.dart';

@freezed
class RankingResultDto with _$RankingResultDto implements IDto {
  const factory RankingResultDto({
    required String id,
    required RankingQuestionDto question,
    required List<RankedItemDto> items,
    required DateTime createdAt,
    String? explanation,
  }) = _RankingResultDto;
  factory RankingResultDto.fromJson(Map<String, dynamic> json) =>
      _$RankingResultDtoFromJson(json);

  const RankingResultDto._();

  factory RankingResultDto.fromDomain(RankingResult domain) {
    return RankingResultDto(
      id: domain.id.getOrCrash(),
      question: RankingQuestionDto.fromDomain(domain.question),
      items: domain.items.map(RankedItemDto.fromDomain).toList(),
      createdAt: domain.createdAt,
      explanation: domain.explanation,
    );
  }

  @override
  RankingResult toDomain() {
    return RankingResult(
      id: UniqueId.fromUniqueString(id),
      question: question.toDomain(),
      items: items.map((dto) => dto.toDomain()).toList(),
      createdAt: createdAt,
      explanation: explanation,
    );
  }
}
