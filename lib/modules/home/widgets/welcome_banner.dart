import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_gradients.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/user_avatar.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/core/responsive/breakpoints.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key, required this.name, this.photoUrl});

  final String name;
  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(gradient: AppGradients.brand),
      padding: EdgeInsets.symmetric(
        horizontal: context.pagePadding,
        vertical: AppSpacing.md - 2,
      ),
      child: Row(
        spacing: AppSpacing.sm + 4,
        children: [
          UserAvatar(name: name, photoUrl: photoUrl),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Bem-vindo',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: AppColors.textPrimary.withValues(alpha: 0.85),
                  ),
                ),
                Text(
                  name,
                  maxLines: 1,
                  overflow: .ellipsis,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: .w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
