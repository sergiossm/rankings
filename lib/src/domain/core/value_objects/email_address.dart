import 'package:fpdart/fpdart.dart';
import 'package:rankings/src/domain/core/failures/email_value_failures.dart';
import 'package:rankings/src/domain/core/i_value_failure.dart';
import 'package:rankings/src/domain/core/i_value_object.dart';

class EmailAddress extends IValueObject<String> {
  factory EmailAddress(String input) {
    return EmailAddress._(
      _validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);

  @override
  final Either<IValueFailure<String>, String> value;
}

Either<IValueFailure<String>, String> _validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(InvalidEmail(failedValue: input));
  }
}
