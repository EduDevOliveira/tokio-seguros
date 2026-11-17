import 'package:flutter/material.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colors => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Color get primary => colors.primary;

  Color get textPrimary => colors.onSurface;

  Color get textSecondary => colors.onSurfaceVariant;
}
