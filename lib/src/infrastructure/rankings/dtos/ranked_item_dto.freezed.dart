// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ranked_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RankedItemDto _$RankedItemDtoFromJson(Map<String, dynamic> json) {
  return _RankedItemDto.fromJson(json);
}

/// @nodoc
mixin _$RankedItemDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this RankedItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RankedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RankedItemDtoCopyWith<RankedItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankedItemDtoCopyWith<$Res> {
  factory $RankedItemDtoCopyWith(
          RankedItemDto value, $Res Function(RankedItemDto) then) =
      _$RankedItemDtoCopyWithImpl<$Res, RankedItemDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      int rank,
      String? description,
      String? imageUrl});
}

/// @nodoc
class _$RankedItemDtoCopyWithImpl<$Res, $Val extends RankedItemDto>
    implements $RankedItemDtoCopyWith<$Res> {
  _$RankedItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RankedItemDto
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
              as String,
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
abstract class _$$RankedItemDtoImplCopyWith<$Res>
    implements $RankedItemDtoCopyWith<$Res> {
  factory _$$RankedItemDtoImplCopyWith(
          _$RankedItemDtoImpl value, $Res Function(_$RankedItemDtoImpl) then) =
      __$$RankedItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      int rank,
      String? description,
      String? imageUrl});
}

/// @nodoc
class __$$RankedItemDtoImplCopyWithImpl<$Res>
    extends _$RankedItemDtoCopyWithImpl<$Res, _$RankedItemDtoImpl>
    implements _$$RankedItemDtoImplCopyWith<$Res> {
  __$$RankedItemDtoImplCopyWithImpl(
      _$RankedItemDtoImpl _value, $Res Function(_$RankedItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RankedItemDto
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
    return _then(_$RankedItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$RankedItemDtoImpl extends _RankedItemDto {
  const _$RankedItemDtoImpl(
      {required this.id,
      required this.title,
      required this.rank,
      this.description,
      this.imageUrl})
      : super._();

  factory _$RankedItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankedItemDtoImplFromJson(json);

  @override
  final String id;
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
    return 'RankedItemDto(id: $id, title: $title, rank: $rank, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankedItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, rank, description, imageUrl);

  /// Create a copy of RankedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RankedItemDtoImplCopyWith<_$RankedItemDtoImpl> get copyWith =>
      __$$RankedItemDtoImplCopyWithImpl<_$RankedItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankedItemDtoImplToJson(
      this,
    );
  }
}

abstract class _RankedItemDto extends RankedItemDto {
  const factory _RankedItemDto(
      {required final String id,
      required final String title,
      required final int rank,
      final String? description,
      final String? imageUrl}) = _$RankedItemDtoImpl;
  const _RankedItemDto._() : super._();

  factory _RankedItemDto.fromJson(Map<String, dynamic> json) =
      _$RankedItemDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get rank;
  @override
  String? get description;
  @override
  String? get imageUrl;

  /// Create a copy of RankedItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RankedItemDtoImplCopyWith<_$RankedItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
