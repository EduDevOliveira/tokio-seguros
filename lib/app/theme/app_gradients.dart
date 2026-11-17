import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';

class AppGradients {
  AppGradients._();

  /// Faixa verde → amarelo do login, banner de boas-vindas e card de dúvidas.
  static const brand = LinearGradient(
    colors: [AppColors.primaryDark, Color(0xFF7CC28C), AppColors.accentYellow],
    stops: [0, 0.45, 1],
  );

  /// Botão redondo de envio (seta).
  static const button = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.primary, Color(0xFF9BC97F)],
  );
}
