import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/user_avatar.dart';
import 'package:tokio_seguros/core/extensions/name_extension.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/core/utils/cpf_utils.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';

class DrawerHeaderSection extends StatelessWidget {
  const DrawerHeaderSection({super.key, required this.user});

  final UserModel? user;

  @override
  Widget build(BuildContext context) {
    final name = user?.name ?? '';

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md,
        AppSpacing.lg,
        AppSpacing.md,
        AppSpacing.sm,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text('Olá!', style: context.textTheme.labelMedium),
          const SizedBox(height: AppSpacing.sm),
          Row(
            spacing: AppSpacing.sm + 4,
            children: [
              UserAvatar(
                name: name,
                photoUrl: user?.photoUrl,
                size: 40,
                showBadge: true,
              ),
              Expanded(
                child: Text(
                  name.shortName.toUpperCase(),
                  maxLines: 2,
                  overflow: .ellipsis,
                  style: context.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 52),
            child: PopupMenuButton<void>(
              tooltip: 'Minha conta',
              position: .under,
              itemBuilder: (_) => [
                PopupMenuItem(
                  enabled: false,
                  child: Text(
                    'CPF ${CpfUtils.format(user?.cpf ?? '')}',
                    style: context.textTheme.bodySmall,
                  ),
                ),
              ],
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
                child: Row(
                  mainAxisSize: .min,
                  spacing: 2,
                  children: [
                    Text(
                      'Minha conta',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: context.primary,
                      ),
                    ),
                    Icon(
                      LucideIcons.chevronDown,
                      size: 14,
                      color: context.primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
