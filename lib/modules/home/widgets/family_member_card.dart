import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_radius.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/user_avatar.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';

class FamilyMemberCard extends StatelessWidget {
  const FamilyMemberCard({
    super.key,
    required this.member,
    required this.onRemove,
    this.width = 280,
  });

  final FamilyMemberModel member;
  final VoidCallback onRemove;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.md - 4,
        AppSpacing.sm + 4,
        AppSpacing.xs,
        AppSpacing.sm + 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.card),
      ),
      child: Row(
        spacing: AppSpacing.sm + 4,
        children: [
          UserAvatar(name: member.name, size: 38),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  member.name,
                  maxLines: 1,
                  overflow: .ellipsis,
                  style: context.textTheme.titleSmall,
                ),
                Text(
                  member.relationship.label,
                  style: context.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          IconButton(
            tooltip: 'Remover ${member.name}',
            icon: Icon(LucideIcons.x, size: 18, color: context.textSecondary),
            onPressed: onRemove,
          ),
        ],
      ),
    );
  }
}
