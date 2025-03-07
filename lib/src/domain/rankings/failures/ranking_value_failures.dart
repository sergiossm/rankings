import 'package:rankings/src/domain/core/i_value_failure.dart';

class Empty<T> extends IValueFailure<T> {
  const Empty({required super.failedValue});
}

class TooShort<T> extends IValueFailure<T> {
  const TooShort({required super.failedValue, required this.minLength});

  final int minLength;
}

class TooLong<T> extends IValueFailure<T> {
  const TooLong({required super.failedValue, required this.maxLength});
  final int maxLength;
}

class InvalidFormat<T> extends IValueFailure<T> {
  const InvalidFormat({required super.failedValue});
}
