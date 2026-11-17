import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_radius.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';

/// Card escuro com ícone e mensagem centralizados (estados vazios da Home).
/// Com [onTap] vira um botão (ex.: adicionar membro da família).
class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.icon,
    required this.message,
    this.onTap,
    this.minHeight = 150,
  });

  final IconData icon;
  final String message;
  final VoidCallback? onTap;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(AppRadius.card),
      clipBehavior: .antiAlias,
      child: InkWell(
        onTap: onTap,
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: minHeight),
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              mainAxisAlignment: .center,
              spacing: AppSpacing.md,
              children: [
                Icon(icon, size: 40, color: AppColors.textPrimary),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 560),
                  child: Text(
                    message,
                    textAlign: .center,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: .w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
