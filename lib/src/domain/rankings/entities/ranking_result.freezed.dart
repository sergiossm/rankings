// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RankingResult {
  UniqueId get id => throw _privateConstructorUsedError;
  RankingQuestion get question => throw _privateConstructorUsedError;
  List<RankedItem> get items => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;

  /// Create a copy of RankingResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingResultCopyWith<RankingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingResultCopyWith<$Res> {
  factory $RankingResultCopyWith(
          RankingResult value, $Res Function(RankingResult) then) =
      _$RankingResultCopyWithImpl<$Res, RankingResult>;
  @useResult
  $Res call(
      {UniqueId id,
      RankingQuestion question,
      List<RankedItem> items,
      DateTime createdAt,
      String? explanation});

  $RankingQuestionCopyWith<$Res> get question;
}

/// @nodoc
class _$RankingResultCopyWithImpl<$Res, $Val extends RankingResult>
    implements $RankingResultCopyWith<$Res> {
  _$RankingResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingResult
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
              as UniqueId,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as RankingQuestion,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RankedItem>,
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

  /// Create a copy of RankingResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RankingQuestionCopyWith<$Res> get question {
    return $RankingQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RankingResultImplCopyWith<$Res>
    implements $RankingResultCopyWith<$Res> {
  factory _$$RankingResultImplCopyWith(
          _$RankingResultImpl value, $Res Function(_$RankingResultImpl) then) =
      __$$RankingResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      RankingQuestion question,
      List<RankedItem> items,
      DateTime createdAt,
      String? explanation});

  @override
  $RankingQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$RankingResultImplCopyWithImpl<$Res>
    extends _$RankingResultCopyWithImpl<$Res, _$RankingResultImpl>
    implements _$$RankingResultImplCopyWith<$Res> {
  __$$RankingResultImplCopyWithImpl(
      _$RankingResultImpl _value, $Res Function(_$RankingResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankingResult
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
    return _then(_$RankingResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as RankingQuestion,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RankedItem>,
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

class _$RankingResultImpl implements _RankingResult {
  const _$RankingResultImpl(
      {required this.id,
      required this.question,
      required final List<RankedItem> items,
      required this.createdAt,
      this.explanation})
      : _items = items;

  @override
  final UniqueId id;
  @override
  final RankingQuestion question;
  final List<RankedItem> _items;
  @override
  List<RankedItem> get items {
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
    return 'RankingResult(id: $id, question: $question, items: $items, createdAt: $createdAt, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_items), createdAt, explanation);

  /// Create a copy of RankingResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingResultImplCopyWith<_$RankingResultImpl> get copyWith =>
      __$$RankingResultImplCopyWithImpl<_$RankingResultImpl>(this, _$identity);
}

abstract class _RankingResult implements RankingResult {
  const factory _RankingResult(
      {required final UniqueId id,
      required final RankingQuestion question,
      required final List<RankedItem> items,
      required final DateTime createdAt,
      final String? explanation}) = _$RankingResultImpl;

  @override
  UniqueId get id;
  @override
  RankingQuestion get question;
  @override
  List<RankedItem> get items;
  @override
  DateTime get createdAt;
  @override
  String? get explanation;

  /// Create a copy of RankingResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingResultImplCopyWith<_$RankingResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
