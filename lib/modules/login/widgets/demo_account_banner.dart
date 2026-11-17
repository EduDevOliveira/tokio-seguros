import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_radius.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/data/services/auth/mock_auth_service.dart';

/// Só aparece com `USE_MOCK_AUTH=true`: mostra a conta demo e preenche o form.
class DemoAccountBanner extends StatelessWidget {
  const DemoAccountBanner({super.key, required this.onUse});

  final VoidCallback onUse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        AppSpacing.sm,
        AppSpacing.xs,
        AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(AppRadius.card),
        border: Border.all(color: AppColors.primary.withValues(alpha: 0.5)),
      ),
      child: Row(
        spacing: AppSpacing.sm,
        children: [
          Icon(LucideIcons.flaskConical, size: 18, color: context.primary),
          Expanded(
            child: Text(
              'Modo demo · CPF ${MockAuthService.demoCpf} · '
              'senha ${MockAuthService.demoPassword}',
              style: context.textTheme.bodySmall,
            ),
          ),
          TextButton(onPressed: onUse, child: const Text('Usar')),
        ],
      ),
    );
  }
}
