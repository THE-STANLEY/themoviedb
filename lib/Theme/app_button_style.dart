import 'package:flutter/material.dart';

abstract class AppButtonStyle {
    static const ButtonStyle linkButton = ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.blue),
      textStyle: WidgetStatePropertyAll(TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
  );
}