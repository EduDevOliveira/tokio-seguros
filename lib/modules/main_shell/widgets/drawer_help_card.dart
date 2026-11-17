import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_gradients.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/core/utils/message_error_listen_utils.dart';

/// "Dúvidas?" no rodapé do menu (atendimento por chat, ilustrativo).
class DrawerHelpCard extends StatelessWidget {
  const DrawerHelpCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textTheme.bodySmall?.copyWith(
      color: AppColors.background,
      fontWeight: .w600,
    );

    return Material(
      child: Ink(
        decoration: const BoxDecoration(gradient: AppGradients.brand),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
            MessageErrorListenUtils.snackBar(
              context,
              message: 'O atendimento por chat estará disponível em breve.',
            );
          },
          child: SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                spacing: AppSpacing.xs,
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: Icon(
                      LucideIcons.headset,
                      color: AppColors.primaryDark,
                    ),
                  ),
                  Text(
                    'Dúvidas?',
                    style: context.textTheme.titleSmall?.copyWith(
                      color: AppColors.background,
                    ),
                  ),
                  Text(
                    'Converse agora com a nossa assistente e tire suas '
                    'dúvidas.',
                    textAlign: .center,
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
