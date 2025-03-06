// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationUserDto _$AuthenticationUserDtoFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationUserDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationUserDto {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Serializes this AuthenticationUserDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticationUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticationUserDtoCopyWith<AuthenticationUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationUserDtoCopyWith<$Res> {
  factory $AuthenticationUserDtoCopyWith(AuthenticationUserDto value,
          $Res Function(AuthenticationUserDto) then) =
      _$AuthenticationUserDtoCopyWithImpl<$Res, AuthenticationUserDto>;
  @useResult
  $Res call({String id, String email, String? displayName, String? photoUrl});
}

/// @nodoc
class _$AuthenticationUserDtoCopyWithImpl<$Res,
        $Val extends AuthenticationUserDto>
    implements $AuthenticationUserDtoCopyWith<$Res> {
  _$AuthenticationUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticationUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationUserDtoImplCopyWith<$Res>
    implements $AuthenticationUserDtoCopyWith<$Res> {
  factory _$$AuthenticationUserDtoImplCopyWith(
          _$AuthenticationUserDtoImpl value,
          $Res Function(_$AuthenticationUserDtoImpl) then) =
      __$$AuthenticationUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String email, String? displayName, String? photoUrl});
}

/// @nodoc
class __$$AuthenticationUserDtoImplCopyWithImpl<$Res>
    extends _$AuthenticationUserDtoCopyWithImpl<$Res,
        _$AuthenticationUserDtoImpl>
    implements _$$AuthenticationUserDtoImplCopyWith<$Res> {
  __$$AuthenticationUserDtoImplCopyWithImpl(_$AuthenticationUserDtoImpl _value,
      $Res Function(_$AuthenticationUserDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticationUserDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$AuthenticationUserDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationUserDtoImpl extends _AuthenticationUserDto {
  const _$AuthenticationUserDtoImpl(
      {required this.id,
      required this.email,
      required this.displayName,
      required this.photoUrl})
      : super._();

  factory _$AuthenticationUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationUserDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'AuthenticationUserDto(id: $id, email: $email, displayName: $displayName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, displayName, photoUrl);

  /// Create a copy of AuthenticationUserDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationUserDtoImplCopyWith<_$AuthenticationUserDtoImpl>
      get copyWith => __$$AuthenticationUserDtoImplCopyWithImpl<
          _$AuthenticationUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationUserDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationUserDto extends AuthenticationUserDto {
  const factory _AuthenticationUserDto(
      {required final String id,
      required final String email,
      required final String? displayName,
      required final String? photoUrl}) = _$AuthenticationUserDtoImpl;
  const _AuthenticationUserDto._() : super._();

  factory _AuthenticationUserDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticationUserDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String? get displayName;
  @override
  String? get photoUrl;

  /// Create a copy of AuthenticationUserDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticationUserDtoImplCopyWith<_$AuthenticationUserDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
