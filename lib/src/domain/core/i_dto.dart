import 'package:rankings/src/domain/core/i_entity.dart';

abstract class IDto {
  String get id;
  Map<String, dynamic> toJson();
  IEntity toDomain();
}
