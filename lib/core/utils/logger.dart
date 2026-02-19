import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class GymLogger {
  static void log(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    String name = 'APP',
  }) {
    if (kDebugMode) {
      developer.log(
        message,
        name: name,
        error: error,
        stackTrace: stackTrace,
        time: DateTime.now(),
      );
    }
  }

  static void error(String message, {Object? error, StackTrace? stackTrace}) {
    log(
      '❌ ERROR: $message',
      error: error,
      stackTrace: stackTrace,
      name: 'ERROR',
    );
  }

  static void warning(String message) {
    log('⚠️ WARNING: $message', name: 'WARNING');
  }

  static void info(String message) {
    log('ℹ️ INFO: $message', name: 'INFO');
  }
}
