// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RankingQuestionDto _$RankingQuestionDtoFromJson(Map<String, dynamic> json) {
  return _RankingQuestionDto.fromJson(json);
}

/// @nodoc
mixin _$RankingQuestionDto {
  String get id => throw _privateConstructorUsedError;
  String get questionText => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  /// Serializes this RankingQuestionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RankingQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingQuestionDtoCopyWith<RankingQuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingQuestionDtoCopyWith<$Res> {
  factory $RankingQuestionDtoCopyWith(
          RankingQuestionDto value, $Res Function(RankingQuestionDto) then) =
      _$RankingQuestionDtoCopyWithImpl<$Res, RankingQuestionDto>;
  @useResult
  $Res call(
      {String id, String questionText, DateTime createdAt, String userId});
}

/// @nodoc
class _$RankingQuestionDtoCopyWithImpl<$Res, $Val extends RankingQuestionDto>
    implements $RankingQuestionDtoCopyWith<$Res> {
  _$RankingQuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionText = null,
    Object? createdAt = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingQuestionDtoImplCopyWith<$Res>
    implements $RankingQuestionDtoCopyWith<$Res> {
  factory _$$RankingQuestionDtoImplCopyWith(_$RankingQuestionDtoImpl value,
          $Res Function(_$RankingQuestionDtoImpl) then) =
      __$$RankingQuestionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String questionText, DateTime createdAt, String userId});
}

/// @nodoc
class __$$RankingQuestionDtoImplCopyWithImpl<$Res>
    extends _$RankingQuestionDtoCopyWithImpl<$Res, _$RankingQuestionDtoImpl>
    implements _$$RankingQuestionDtoImplCopyWith<$Res> {
  __$$RankingQuestionDtoImplCopyWithImpl(_$RankingQuestionDtoImpl _value,
      $Res Function(_$RankingQuestionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankingQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionText = null,
    Object? createdAt = null,
    Object? userId = null,
  }) {
    return _then(_$RankingQuestionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingQuestionDtoImpl extends _RankingQuestionDto {
  const _$RankingQuestionDtoImpl(
      {required this.id,
      required this.questionText,
      required this.createdAt,
      required this.userId})
      : super._();

  factory _$RankingQuestionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingQuestionDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String questionText;
  @override
  final DateTime createdAt;
  @override
  final String userId;

  @override
  String toString() {
    return 'RankingQuestionDto(id: $id, questionText: $questionText, createdAt: $createdAt, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingQuestionDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, questionText, createdAt, userId);

  /// Create a copy of RankingQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingQuestionDtoImplCopyWith<_$RankingQuestionDtoImpl> get copyWith =>
      __$$RankingQuestionDtoImplCopyWithImpl<_$RankingQuestionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingQuestionDtoImplToJson(
      this,
    );
  }
}

abstract class _RankingQuestionDto extends RankingQuestionDto {
  const factory _RankingQuestionDto(
      {required final String id,
      required final String questionText,
      required final DateTime createdAt,
      required final String userId}) = _$RankingQuestionDtoImpl;
  const _RankingQuestionDto._() : super._();

  factory _RankingQuestionDto.fromJson(Map<String, dynamic> json) =
      _$RankingQuestionDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get questionText;
  @override
  DateTime get createdAt;
  @override
  String get userId;

  /// Create a copy of RankingQuestionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingQuestionDtoImplCopyWith<_$RankingQuestionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
