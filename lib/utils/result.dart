sealed class Result<T> {
  const Result();

  factory Result.success(T value) => Success._(value);
  factory Result.error(String errorMessage) => Error._(errorMessage);
}

final class Success<T> extends Result<T> {
  final T value;

  // const Success(this.value);
  const Success._(this.value);

  @override
  String toString() => 'Result<$T>.Success($value)';
}

final class Error<T> extends Result<T> {
  final String errorMessage;

  // const Error(this.message);
  const Error._(this.errorMessage);

  @override
  String toString() => 'Result<$T>.Error($errorMessage)';
}
