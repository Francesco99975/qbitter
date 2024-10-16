import 'package:flutter/material.dart';

class SnackBarService {
  static void showNegativeSnackBar({
    required BuildContext context,
    required String message,
    Duration? duration,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Theme.of(context).colorScheme.error,
      duration: duration ?? const Duration(seconds: 10),
    ));
  }

  static void showPositiveSnackBar({
    required BuildContext context,
    required String message,
    Duration? duration,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      duration: duration ?? const Duration(seconds: 3),
    ));
  }
}
