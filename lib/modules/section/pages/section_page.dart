import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/enums/main_menu.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key, required this.menu});

  final MainMenu? menu;

  @override
  Widget build(BuildContext context) {
    final item = menu;

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Column(
            mainAxisSize: .min,
            spacing: AppSpacing.md,
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.lg - 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.primary.withValues(alpha: 0.12),
                ),
                child: Icon(
                  item?.icon ?? LucideIcons.construction,
                  size: 36,
                  color: context.primary,
                ),
              ),
              Text(
                item?.label ?? 'Página não encontrada',
                textAlign: .center,
                style: context.textTheme.titleLarge,
              ),
              Text(
                item == null
                    ? 'O endereço acessado não existe.'
                    : 'Estamos preparando esta área. Em breve você poderá '
                          'acessar ${item.label.toLowerCase()} por aqui.',
                textAlign: .center,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.textSecondary,
                ),
              ),
              const SizedBox(height: AppSpacing.xs),
              OutlinedButton(
                onPressed: () => context.navigate(Routes.mainShell),
                child: const Text('Voltar para o início'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
