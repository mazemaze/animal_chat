import 'package:flutter/material.dart';

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  unknown,
}

class AppError {
  late String message;
  late AppErrorType type;

  AppError(Exception? error) {
    debugPrint('AppError(UnKnown: $error');
    type = AppErrorType.unknown;
    message = 'AppError : $error';
  }
}
