/// Ошибка, обработанная в слое бинес-логики приложения.
///
/// Ожидается, что это единственный вид ошибки, который мы можем получить
/// в презентационном слое приложения.
class Failure implements Exception {
  /// Сообщение ошибки.
  ///
  /// Должно иметь такое содержание, которое будет понятно при чтении логов
  /// или в крайнем случае при отображении пользователю.
  final String? message;

  /// Родительский [Exception], если имеется.
  ///
  /// Необходим для корректной фиксации логов.
  final Exception? parentException;

  /// [StackTrace] родительской ошибки, если есть.
  final StackTrace? stackTrace;

  /// Расширенное сообщение об ошибке.
  ///
  /// Не для глаз пользователя. Использовать при логгировании или отладке.
  final String? debugMessage;

  /// @nodoc
  const Failure({
    this.message,
    this.parentException,
    this.stackTrace,
    this.debugMessage,
  });

  @override
  String toString() =>
      'Failure(message: "$message", debugMessage: "$debugMessage", parentException: $parentException)';
}
