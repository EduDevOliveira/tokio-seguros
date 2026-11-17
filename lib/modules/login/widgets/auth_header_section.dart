import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/app_brand.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';

class AuthHeaderSection extends StatelessWidget {
  const AuthHeaderSection({super.key, this.centered = false});

  /// Na web/desktop o cabeçalho fica centralizado (layout de referência).
  final bool centered;

  @override
  Widget build(BuildContext context) {
    final align = centered ? TextAlign.center : TextAlign.start;

    return Column(
      crossAxisAlignment: centered ? .center : .start,
      children: [
        const AppBrand(height: 34, color: Colors.white),
        const SizedBox(height: AppSpacing.lg),
        Text(
          'Bem vindo!',
          textAlign: align,
          style: context.textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(
          'Aqui você gerencia seus seguros e de seus familiares\n'
          'em poucos cliques!',
          textAlign: align,
          style: context.textTheme.bodyMedium?.copyWith(
            color: Colors.white,
            fontWeight: .w600,
          ),
        ),
      ],
    );
  }
}
