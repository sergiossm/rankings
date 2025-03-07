// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingQuestionDtoImpl _$$RankingQuestionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RankingQuestionDtoImpl(
      id: json['id'] as String,
      questionText: json['questionText'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$RankingQuestionDtoImplToJson(
        _$RankingQuestionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questionText': instance.questionText,
      'createdAt': instance.createdAt.toIso8601String(),
      'userId': instance.userId,
    };
