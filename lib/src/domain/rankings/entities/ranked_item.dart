import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_entity.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';

part 'ranked_item.freezed.dart';

@freezed
class RankedItem with _$RankedItem implements IEntity {
  const factory RankedItem({
    required UniqueId id,
    required String title,
    required int rank,
    String? description,
    String? imageUrl,
  }) = _RankedItem;
}
