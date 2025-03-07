// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranked_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankedItemDtoImpl _$$RankedItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$RankedItemDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      rank: (json['rank'] as num).toInt(),
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$RankedItemDtoImplToJson(_$RankedItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rank': instance.rank,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
