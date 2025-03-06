import 'package:rankings/src/domain/core/i_value_failure.dart';

class ShortPassword<T> extends IValueFailure<T> {
  ShortPassword({required super.failedValue});
}
