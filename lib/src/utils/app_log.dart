import 'package:flutter/foundation.dart';

import 'log/logger.dart';

class AppLog {
  static Logger logger = Logger(
    printer: PrettyPrinter(),
  );

  static Logger loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );

  static debug(dynamic message, {String tag = "Debug"}) {
    if (kDebugMode) {
      // logger.d(message, tag);

      loggerNoStack.d(message, tag);
    }
  }

  static info(dynamic message, {String tag = "Info"}) {
    if (kDebugMode) {
      // logger.i(message);

      loggerNoStack.i(message, tag);
    }
  }

  static warning(dynamic message, {String tag = "Warning"}) {
    if (kDebugMode) {
      loggerNoStack.w(message, tag);
    }
  }

  static error(dynamic message, {String tag = "Error"}) {
    if (kDebugMode) {
      // logger.e(message, tag);

      loggerNoStack.e(message, tag);
    }
  }

  static verbose(dynamic message, {String tag = "Verbose"}) {
    if (kDebugMode) {
      // logger.v(message);

      loggerNoStack.v(message, tag);
    }
  }
}
