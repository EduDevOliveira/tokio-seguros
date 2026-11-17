import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_gradients.dart';
import 'package:tokio_seguros/core/extensions/size_extension.dart';
import 'package:tokio_seguros/core/responsive/breakpoints.dart';

/// Faixa verde → amarelo no topo; o card do login fica sobre a divisa.
class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final factor = context.screenSize.isMobile ? 0.48 : 0.6;

    return Align(
      alignment: .topCenter,
      child: Container(
        height: context.percentHeight(factor).clamp(320, 900),
        decoration: const BoxDecoration(gradient: AppGradients.brand),
      ),
    );
  }
}
