import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_entity.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/entities/ranked_item.dart';
import 'package:rankings/src/domain/rankings/entities/ranking_question.dart';

part 'ranking_result.freezed.dart';

@freezed
class RankingResult with _$RankingResult implements IEntity {
  const factory RankingResult({
    required UniqueId id,
    required RankingQuestion question,
    required List<RankedItem> items,
    required DateTime createdAt,
    String? explanation,
  }) = _RankingResult;
}
