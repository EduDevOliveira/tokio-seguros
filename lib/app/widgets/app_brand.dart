import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/core/constants/app_images.dart';

/// Logo + "TOKIO MARINE / SEGURADORA". [height] é a altura do símbolo; o texto
/// acompanha a proporção.
class AppBrand extends StatelessWidget {
  const AppBrand({super.key, this.height = 28, this.color});

  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontFamily: 'serif',
      fontFamilyFallback: const ['Georgia', 'Times New Roman'],
      fontSize: height * 0.36,
      height: 1.05,
      letterSpacing: height * 0.02,
      fontWeight: FontWeight.w600,
      color: color ?? AppColors.textPrimary,
    );

    return Semantics(
      label: 'Tokio Marine Seguradora',
      child: ExcludeSemantics(
        child: Row(
          mainAxisSize: .min,
          spacing: height * 0.25,
          children: [
            Image.asset(AppImages.logo, height: height, width: height),
            Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              children: [
                Text('TOKIO MARINE', style: textStyle),
                Text('SEGURADORA', style: textStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
