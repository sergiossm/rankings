// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranked_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RankedItem {
  UniqueId get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Create a copy of RankedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankedItemCopyWith<RankedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankedItemCopyWith<$Res> {
  factory $RankedItemCopyWith(
          RankedItem value, $Res Function(RankedItem) then) =
      _$RankedItemCopyWithImpl<$Res, RankedItem>;
  @useResult
  $Res call(
      {UniqueId id,
      String title,
      int rank,
      String? description,
      String? imageUrl});
}

/// @nodoc
class _$RankedItemCopyWithImpl<$Res, $Val extends RankedItem>
    implements $RankedItemCopyWith<$Res> {
  _$RankedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rank = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankedItemImplCopyWith<$Res>
    implements $RankedItemCopyWith<$Res> {
  factory _$$RankedItemImplCopyWith(
          _$RankedItemImpl value, $Res Function(_$RankedItemImpl) then) =
      __$$RankedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String title,
      int rank,
      String? description,
      String? imageUrl});
}

/// @nodoc
class __$$RankedItemImplCopyWithImpl<$Res>
    extends _$RankedItemCopyWithImpl<$Res, _$RankedItemImpl>
    implements _$$RankedItemImplCopyWith<$Res> {
  __$$RankedItemImplCopyWithImpl(
      _$RankedItemImpl _value, $Res Function(_$RankedItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? rank = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$RankedItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RankedItemImpl implements _RankedItem {
  const _$RankedItemImpl(
      {required this.id,
      required this.title,
      required this.rank,
      this.description,
      this.imageUrl});

  @override
  final UniqueId id;
  @override
  final String title;
  @override
  final int rank;
  @override
  final String? description;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'RankedItem(id: $id, title: $title, rank: $rank, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankedItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, rank, description, imageUrl);

  /// Create a copy of RankedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankedItemImplCopyWith<_$RankedItemImpl> get copyWith =>
      __$$RankedItemImplCopyWithImpl<_$RankedItemImpl>(this, _$identity);
}

abstract class _RankedItem implements RankedItem {
  const factory _RankedItem(
      {required final UniqueId id,
      required final String title,
      required final int rank,
      final String? description,
      final String? imageUrl}) = _$RankedItemImpl;

  @override
  UniqueId get id;
  @override
  String get title;
  @override
  int get rank;
  @override
  String? get description;
  @override
  String? get imageUrl;

  /// Create a copy of RankedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankedItemImplCopyWith<_$RankedItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
