import 'package:fpdart/fpdart.dart';
import 'package:rankings/src/domain/authentication/failures/password_value_failures.dart';
import 'package:rankings/src/domain/core/i_value_failure.dart';
import 'package:rankings/src/domain/core/i_value_object.dart';

class Password extends IValueObject<String> {
  factory Password(String input) {
    return Password._(
      _validatePassword(input),
    );
  }

  const Password._(this.value);
  @override
  final Either<IValueFailure<String>, String> value;
}

Either<IValueFailure<String>, String> _validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ShortPassword(failedValue: input));
  }
}
