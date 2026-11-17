import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/message_card.dart';
import 'package:tokio_seguros/app/widgets/section_title.dart';
import 'package:tokio_seguros/core/responsive/breakpoints.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';
import 'package:tokio_seguros/modules/home/widgets/family_member_card.dart';

class FamilySection extends StatelessWidget {
  const FamilySection({
    super.key,
    required this.members,
    required this.onAdd,
    required this.onRemove,
  });

  final List<FamilyMemberModel> members;
  final VoidCallback onAdd;
  final ValueChanged<FamilyMemberModel> onRemove;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        SectionTitle(
          'Minha Família',
          trailing: members.isEmpty
              ? null
              : TextButton.icon(
                  onPressed: onAdd,
                  icon: const Icon(LucideIcons.userPlus, size: 16),
                  label: const Text('Adicionar'),
                ),
        ),
        if (members.isEmpty)
          MessageCard(
            icon: LucideIcons.circlePlus,
            message:
                'Adicione aqui membros da sua família e compartilhe os '
                'seguros com eles.',
            onTap: onAdd,
          )
        else
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: [
              for (final member in members)
                FamilyMemberCard(
                  member: member,
                  width: context.screenSize.isMobile ? double.infinity : 280,
                  onRemove: () => onRemove(member),
                ),
            ],
          ),
      ],
    );
  }
}
