// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RankingResultDto _$RankingResultDtoFromJson(Map<String, dynamic> json) {
  return _RankingResultDto.fromJson(json);
}

/// @nodoc
mixin _$RankingResultDto {
  String get id => throw _privateConstructorUsedError;
  RankingQuestionDto get question => throw _privateConstructorUsedError;
  List<RankedItemDto> get items => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;

  /// Serializes this RankingResultDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RankingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingResultDtoCopyWith<RankingResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingResultDtoCopyWith<$Res> {
  factory $RankingResultDtoCopyWith(
          RankingResultDto value, $Res Function(RankingResultDto) then) =
      _$RankingResultDtoCopyWithImpl<$Res, RankingResultDto>;
  @useResult
  $Res call(
      {String id,
      RankingQuestionDto question,
      List<RankedItemDto> items,
      DateTime createdAt,
      String? explanation});

  $RankingQuestionDtoCopyWith<$Res> get question;
}

/// @nodoc
class _$RankingResultDtoCopyWithImpl<$Res, $Val extends RankingResultDto>
    implements $RankingResultDtoCopyWith<$Res> {
  _$RankingResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? items = null,
    Object? createdAt = null,
    Object? explanation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as RankingQuestionDto,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RankedItemDto>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RankingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RankingQuestionDtoCopyWith<$Res> get question {
    return $RankingQuestionDtoCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RankingResultDtoImplCopyWith<$Res>
    implements $RankingResultDtoCopyWith<$Res> {
  factory _$$RankingResultDtoImplCopyWith(_$RankingResultDtoImpl value,
          $Res Function(_$RankingResultDtoImpl) then) =
      __$$RankingResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      RankingQuestionDto question,
      List<RankedItemDto> items,
      DateTime createdAt,
      String? explanation});

  @override
  $RankingQuestionDtoCopyWith<$Res> get question;
}

/// @nodoc
class __$$RankingResultDtoImplCopyWithImpl<$Res>
    extends _$RankingResultDtoCopyWithImpl<$Res, _$RankingResultDtoImpl>
    implements _$$RankingResultDtoImplCopyWith<$Res> {
  __$$RankingResultDtoImplCopyWithImpl(_$RankingResultDtoImpl _value,
      $Res Function(_$RankingResultDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? items = null,
    Object? createdAt = null,
    Object? explanation = freezed,
  }) {
    return _then(_$RankingResultDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as RankingQuestionDto,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RankedItemDto>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingResultDtoImpl extends _RankingResultDto {
  const _$RankingResultDtoImpl(
      {required this.id,
      required this.question,
      required final List<RankedItemDto> items,
      required this.createdAt,
      this.explanation})
      : _items = items,
        super._();

  factory _$RankingResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingResultDtoImplFromJson(json);

  @override
  final String id;
  @override
  final RankingQuestionDto question;
  final List<RankedItemDto> _items;
  @override
  List<RankedItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime createdAt;
  @override
  final String? explanation;

  @override
  String toString() {
    return 'RankingResultDto(id: $id, question: $question, items: $items, createdAt: $createdAt, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingResultDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_items), createdAt, explanation);

  /// Create a copy of RankingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingResultDtoImplCopyWith<_$RankingResultDtoImpl> get copyWith =>
      __$$RankingResultDtoImplCopyWithImpl<_$RankingResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingResultDtoImplToJson(
      this,
    );
  }
}

abstract class _RankingResultDto extends RankingResultDto {
  const factory _RankingResultDto(
      {required final String id,
      required final RankingQuestionDto question,
      required final List<RankedItemDto> items,
      required final DateTime createdAt,
      final String? explanation}) = _$RankingResultDtoImpl;
  const _RankingResultDto._() : super._();

  factory _RankingResultDto.fromJson(Map<String, dynamic> json) =
      _$RankingResultDtoImpl.fromJson;

  @override
  String get id;
  @override
  RankingQuestionDto get question;
  @override
  List<RankedItemDto> get items;
  @override
  DateTime get createdAt;
  @override
  String? get explanation;

  /// Create a copy of RankingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingResultDtoImplCopyWith<_$RankingResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
