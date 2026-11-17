import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_seguros/app/theme/app_theme.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget child) {
    return pumpWidget(
      MaterialApp(
        theme: AppTheme.dark,
        home: Scaffold(body: SingleChildScrollView(child: child)),
      ),
    );
  }
}
