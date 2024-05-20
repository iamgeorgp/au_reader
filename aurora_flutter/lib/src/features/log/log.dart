/// * Логирование
///
/// [message] - Сообщение лога
///
/// [time] - Время лога (Опционально)
///
/// [stackTrace] (Опционально)
///
///
// ignore_for_file: comment_references

abstract interface class Log {
  /// * Дебаг.
  /// Вызывается при дебаге. Для вывода лога при разработке.
  ///
  ///
  void d(dynamic message, {DateTime? time, StackTrace? stackTrace});

  /// * Информация.
  ///
  /// Информационный лог. Низкий приоритет
  ///
  /// Пример: Log.w('Получены пользовательские данные')
  void i(dynamic message, {DateTime? time, StackTrace? stackTrace});

  /// * Внимание.
  ///
  /// Предупреждающий лог. Средний приоритет. Лог для ошибок, которые
  /// не влияют на функциональность
  ///
  /// Пример: Log.w('Загружены старые данные')
  void w(dynamic message, {DateTime? time, StackTrace? stackTrace});

  /// * Ошибка.
  ///
  /// Высокий приоритет. Лог для вывода критических ошибок, влияют
  /// на функциональность
  ///
  /// Пример: Log.w('int is not type String...')
  void e(dynamic message, {DateTime? time, StackTrace? stackTrace});

  /// * Почему это не работает.
  ///
  /// ...
  void wtf(dynamic message, {DateTime? time, StackTrace? stackTrace});
}
