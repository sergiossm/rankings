import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/authentication/entities/authentication_user.dart';
import 'package:rankings/src/domain/core/i_dto.dart';
import 'package:rankings/src/domain/core/value_objects/email_address.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';

part 'authentication_user_dto.freezed.dart';
part 'authentication_user_dto.g.dart';

@freezed
class AuthenticationUserDto with _$AuthenticationUserDto implements IDto {
  const factory AuthenticationUserDto({
    required String id,
    required String email,
    required String? displayName,
    required String? photoUrl,
  }) = _AuthenticationUserDto;

  const AuthenticationUserDto._();

  factory AuthenticationUserDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationUserDtoFromJson(json);

  @override
  AuthenticationUser toDomain() {
    return AuthenticationUser(
      id: UniqueId.fromUniqueString(id),
      emailAddress: EmailAddress(email),
      displayName: displayName,
      photoUrl: Uri.parse(photoUrl ?? ''),
    );
  }
}
