// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationUserDtoImpl _$$AuthenticationUserDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationUserDtoImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$AuthenticationUserDtoImplToJson(
        _$AuthenticationUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
    };
