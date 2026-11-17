import 'package:flutter/widgets.dart';

/// Larguras de corte usadas no app (mesmo código no celular e na web).
abstract class Breakpoints {
  static const double tablet = 600;
  static const double desktop = 1024;

  /// Largura máxima do conteúdo em telas muito largas.
  static const double maxContent = 1600;
}

enum ScreenSize {
  mobile,
  tablet,
  desktop;

  static ScreenSize fromWidth(double width) {
    if (width >= Breakpoints.desktop) return desktop;
    if (width >= Breakpoints.tablet) return tablet;
    return mobile;
  }

  bool get isMobile => this == mobile;
  bool get isDesktop => this == desktop;
}

extension ScreenSizeContext on BuildContext {
  ScreenSize get screenSize =>
      ScreenSize.fromWidth(MediaQuery.sizeOf(this).width);

  /// Padding lateral do conteúdo: cresce com a tela.
  double get pagePadding => switch (screenSize) {
    .mobile => 16,
    .tablet => 24,
    .desktop => 32,
  };
}
