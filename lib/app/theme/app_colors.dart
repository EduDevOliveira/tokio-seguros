import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // ============================================================
  // MARCA
  // ============================================================

  /// Verde-água da marca. Botões, links, ícones ativos.
  static const Color primary = Color(0xFF2EB496);

  /// Verde mais escuro, início do degradê.
  static const Color primaryDark = Color(0xFF1F9C83);

  /// Amarelo claro, fim do degradê da marca.
  static const Color accentYellow = Color(0xFFEDE27D);

  /// Badge de notificação.
  static const Color badge = Color(0xFFE5366F);

  // ============================================================
  // SUPERFÍCIES (o app é só escuro, igual ao layout)
  // ============================================================

  static const Color background = Color(0xFF212228);
  static const Color surface = Color(0xFF2B2C35);
  static const Color surfaceVariant = Color(0xFF33343F);
  static const Color appBar = Color(0xFF1B1C21);
  static const Color border = Color(0x1AFFFFFF);

  // ============================================================
  // TEXTO
  // ============================================================

  static const Color textPrimary = Color(0xFFF7F7F8);
  static const Color textSecondary = Color(0xFFA3A5B0);

  // ============================================================
  // ESTADOS
  // ============================================================

  static const Color error = Color(0xFFFF6B6B);
}
