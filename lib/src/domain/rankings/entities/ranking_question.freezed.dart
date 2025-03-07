// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RankingQuestion {
  UniqueId get id => throw _privateConstructorUsedError;
  QuestionText get questionText => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  UniqueId get userId => throw _privateConstructorUsedError;

  /// Create a copy of RankingQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingQuestionCopyWith<RankingQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingQuestionCopyWith<$Res> {
  factory $RankingQuestionCopyWith(
          RankingQuestion value, $Res Function(RankingQuestion) then) =
      _$RankingQuestionCopyWithImpl<$Res, RankingQuestion>;
  @useResult
  $Res call(
      {UniqueId id,
      QuestionText questionText,
      DateTime createdAt,
      UniqueId userId});
}

/// @nodoc
class _$RankingQuestionCopyWithImpl<$Res, $Val extends RankingQuestion>
    implements $RankingQuestionCopyWith<$Res> {
  _$RankingQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingQuestion
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
              as UniqueId,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as QuestionText,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingQuestionImplCopyWith<$Res>
    implements $RankingQuestionCopyWith<$Res> {
  factory _$$RankingQuestionImplCopyWith(_$RankingQuestionImpl value,
          $Res Function(_$RankingQuestionImpl) then) =
      __$$RankingQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      QuestionText questionText,
      DateTime createdAt,
      UniqueId userId});
}

/// @nodoc
class __$$RankingQuestionImplCopyWithImpl<$Res>
    extends _$RankingQuestionCopyWithImpl<$Res, _$RankingQuestionImpl>
    implements _$$RankingQuestionImplCopyWith<$Res> {
  __$$RankingQuestionImplCopyWithImpl(
      _$RankingQuestionImpl _value, $Res Function(_$RankingQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankingQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionText = null,
    Object? createdAt = null,
    Object? userId = null,
  }) {
    return _then(_$RankingQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      questionText: null == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as QuestionText,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$RankingQuestionImpl implements _RankingQuestion {
  const _$RankingQuestionImpl(
      {required this.id,
      required this.questionText,
      required this.createdAt,
      required this.userId});

  @override
  final UniqueId id;
  @override
  final QuestionText questionText;
  @override
  final DateTime createdAt;
  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'RankingQuestion(id: $id, questionText: $questionText, createdAt: $createdAt, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, questionText, createdAt, userId);

  /// Create a copy of RankingQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingQuestionImplCopyWith<_$RankingQuestionImpl> get copyWith =>
      __$$RankingQuestionImplCopyWithImpl<_$RankingQuestionImpl>(
          this, _$identity);
}

abstract class _RankingQuestion implements RankingQuestion {
  const factory _RankingQuestion(
      {required final UniqueId id,
      required final QuestionText questionText,
      required final DateTime createdAt,
      required final UniqueId userId}) = _$RankingQuestionImpl;

  @override
  UniqueId get id;
  @override
  QuestionText get questionText;
  @override
  DateTime get createdAt;
  @override
  UniqueId get userId;

  /// Create a copy of RankingQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingQuestionImplCopyWith<_$RankingQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
