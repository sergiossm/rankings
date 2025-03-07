abstract class IValueFailure<T> {
  const IValueFailure({required this.failedValue});

  final T failedValue;
}
