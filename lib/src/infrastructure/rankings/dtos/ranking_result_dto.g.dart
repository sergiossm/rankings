// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingResultDtoImpl _$$RankingResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingResultDtoImpl(
      id: json['id'] as String,
      question:
          RankingQuestionDto.fromJson(json['question'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => RankedItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      explanation: json['explanation'] as String?,
    );

Map<String, dynamic> _$$RankingResultDtoImplToJson(
        _$RankingResultDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'items': instance.items,
      'createdAt': instance.createdAt.toIso8601String(),
      'explanation': instance.explanation,
    };
