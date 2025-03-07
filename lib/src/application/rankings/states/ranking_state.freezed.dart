// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RankingState {
  bool get isInitial => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  AsyncValue<RankingResult> get result => throw _privateConstructorUsedError;

  /// Create a copy of RankingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankingStateCopyWith<RankingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingStateCopyWith<$Res> {
  factory $RankingStateCopyWith(
          RankingState value, $Res Function(RankingState) then) =
      _$RankingStateCopyWithImpl<$Res, RankingState>;
  @useResult
  $Res call({bool isInitial, bool isLoading, AsyncValue<RankingResult> result});
}

/// @nodoc
class _$RankingStateCopyWithImpl<$Res, $Val extends RankingState>
    implements $RankingStateCopyWith<$Res> {
  _$RankingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitial = null,
    Object? isLoading = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AsyncValue<RankingResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingStateImplCopyWith<$Res>
    implements $RankingStateCopyWith<$Res> {
  factory _$$RankingStateImplCopyWith(
          _$RankingStateImpl value, $Res Function(_$RankingStateImpl) then) =
      __$$RankingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInitial, bool isLoading, AsyncValue<RankingResult> result});
}

/// @nodoc
class __$$RankingStateImplCopyWithImpl<$Res>
    extends _$RankingStateCopyWithImpl<$Res, _$RankingStateImpl>
    implements _$$RankingStateImplCopyWith<$Res> {
  __$$RankingStateImplCopyWithImpl(
      _$RankingStateImpl _value, $Res Function(_$RankingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitial = null,
    Object? isLoading = null,
    Object? result = null,
  }) {
    return _then(_$RankingStateImpl(
      isInitial: null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AsyncValue<RankingResult>,
    ));
  }
}

/// @nodoc

class _$RankingStateImpl implements _RankingState {
  const _$RankingStateImpl(
      {this.isInitial = false,
      this.isLoading = false,
      this.result = const AsyncValue<RankingResult>.loading()});

  @override
  @JsonKey()
  final bool isInitial;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final AsyncValue<RankingResult> result;

  @override
  String toString() {
    return 'RankingState(isInitial: $isInitial, isLoading: $isLoading, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingStateImpl &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInitial, isLoading, result);

  /// Create a copy of RankingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingStateImplCopyWith<_$RankingStateImpl> get copyWith =>
      __$$RankingStateImplCopyWithImpl<_$RankingStateImpl>(this, _$identity);
}

abstract class _RankingState implements RankingState {
  const factory _RankingState(
      {final bool isInitial,
      final bool isLoading,
      final AsyncValue<RankingResult> result}) = _$RankingStateImpl;

  @override
  bool get isInitial;
  @override
  bool get isLoading;
  @override
  AsyncValue<RankingResult> get result;

  /// Create a copy of RankingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankingStateImplCopyWith<_$RankingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
