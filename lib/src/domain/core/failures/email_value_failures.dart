import 'package:rankings/src/domain/core/i_value_failure.dart';

class InvalidEmail<T> extends IValueFailure<T> {
  InvalidEmail({required super.failedValue});
}
