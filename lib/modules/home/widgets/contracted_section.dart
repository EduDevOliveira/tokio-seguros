import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_radius.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/message_card.dart';
import 'package:tokio_seguros/app/widgets/section_title.dart';
import 'package:tokio_seguros/core/extensions/insurance_type_extension.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/domain/models/policy_model.dart';

class ContractedSection extends StatelessWidget {
  const ContractedSection({super.key, required this.policies});

  final List<PolicyModel> policies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        const SectionTitle('Contratados'),
        if (policies.isEmpty)
          const MessageCard(
            icon: LucideIcons.frown,
            message: 'Você ainda não possui seguros contratados.',
          )
        else
          Column(
            spacing: AppSpacing.sm,
            children: [
              for (final policy in policies) _PolicyTile(policy: policy),
            ],
          ),
      ],
    );
  }
}

class _PolicyTile extends StatelessWidget {
  const _PolicyTile({required this.policy});

  final PolicyModel policy;

  @override
  Widget build(BuildContext context) {
    final validUntil = DateFormat('dd/MM/yyyy').format(policy.validUntil);

    return ListTile(
      tileColor: AppColors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.card),
      ),
      leading: Icon(policy.type.icon, color: context.primary),
      title: Text(policy.type.label, style: context.textTheme.titleSmall),
      subtitle: Text(
        '${policy.description} · válido até $validUntil',
        style: context.textTheme.bodySmall,
      ),
    );
  }
}
