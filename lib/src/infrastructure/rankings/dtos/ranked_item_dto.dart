import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_dto.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';
import 'package:rankings/src/domain/rankings/entities/ranked_item.dart';

part 'ranked_item_dto.freezed.dart';
part 'ranked_item_dto.g.dart';

@freezed
class RankedItemDto with _$RankedItemDto implements IDto {
  const factory RankedItemDto({
    required String id,
    required String title,
    required int rank,
    String? description,
    String? imageUrl,
  }) = _RankedItemDto;
  factory RankedItemDto.fromJson(Map<String, dynamic> json) =>
      _$RankedItemDtoFromJson(json);

  const RankedItemDto._();

  factory RankedItemDto.fromDomain(RankedItem domain) {
    return RankedItemDto(
      id: domain.id.getOrCrash(),
      title: domain.title,
      rank: domain.rank,
      description: domain.description,
      imageUrl: domain.imageUrl,
    );
  }

  @override
  RankedItem toDomain() {
    return RankedItem(
      id: UniqueId.fromUniqueString(id),
      title: title,
      rank: rank,
      description: description,
      imageUrl: imageUrl,
    );
  }
}
