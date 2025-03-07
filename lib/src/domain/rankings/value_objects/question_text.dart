import 'package:fpdart/fpdart.dart';
import 'package:rankings/src/domain/core/i_value_failure.dart';
import 'package:rankings/src/domain/core/i_value_object.dart';
import 'package:rankings/src/domain/rankings/failures/ranking_value_failures.dart';

class QuestionText extends IValueObject<String> {
  factory QuestionText(String input) {
    return QuestionText._(_validateQuestionText(input));
  }

  const QuestionText._(this.value);

  @override
  final Either<IValueFailure<String>, String> value;

  static Either<IValueFailure<String>, String> _validateQuestionText(
    String input,
  ) {
    // Trim input to remove leading/trailing whitespace
    final trimmedInput = input.trim();

    // Check if the input is empty
    if (trimmedInput.isEmpty) {
      return left(Empty(failedValue: input));
    }

    // Check if the input is too short
    if (trimmedInput.length < 5) {
      return left(TooShort(failedValue: input, minLength: 5));
    }

    // Check if the input is too long
    if (trimmedInput.length > 500) {
      return left(TooLong(failedValue: input, maxLength: 500));
    }

    // Input is valid
    return right(trimmedInput);
  }
}
