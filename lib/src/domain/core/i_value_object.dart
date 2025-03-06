import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rankings/src/domain/core/i_value_failure.dart';

mixin IValidatable {
  bool isValid();
}

@immutable
abstract class IValueObject<T> implements IValidatable {
  const IValueObject();
  Either<IValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw Exception(f), (right) => right);
  }

  T getOrElse(T dflt) {
    return value.getOrElse((_) => dflt);
  }

  Either<IValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is IValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
