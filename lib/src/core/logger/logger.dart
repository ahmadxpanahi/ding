import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class Log {
  static Logger? _logger;

  static void init() {
    Level logLevel = Level.debug;
    if (kReleaseMode) {
      logLevel = Level.nothing;
    }
    _logger = Logger(
      level: logLevel,
      printer: PrettyPrinter(),
    );
  }

  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger?.v(message, error, stackTrace);
  }

  /// Log a message at level [Level.debug].
  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger?.d(message, error, stackTrace);
  }

  /// Log a message at level [Level.info].
  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger?.i(message, error, stackTrace);
  }

  /// Log a message at level [Level.warning].
  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger?.w(message, error, stackTrace);
  }

  /// Log a message at level [Level.error].
  static void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger?.e(message, error, stackTrace);
  }

  /// Log a message at level [Level.wtf].
  static void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger?.wtf(message, error, stackTrace);
  }
}
