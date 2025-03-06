import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_entity.dart';
import 'package:rankings/src/domain/core/value_objects/email_address.dart';
import 'package:rankings/src/domain/core/value_objects/unique_id.dart';

part 'authentication_user.freezed.dart';

@freezed
class AuthenticationUser with _$AuthenticationUser implements IEntity {
  const factory AuthenticationUser({
    required UniqueId id,
    required EmailAddress emailAddress,
    Uri? photoUrl,
    String? displayName,
  }) = _AuthenticationUser;
}
