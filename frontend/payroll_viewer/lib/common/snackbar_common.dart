import 'package:flutter/material.dart';

class SnackbarCommon {
  static void show(
    BuildContext context,
    String message, {
    Color? backgroundColor,
  }) {
    var adjustedColor = backgroundColor ?? Colors.red;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text(
            message,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: adjustedColor,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
