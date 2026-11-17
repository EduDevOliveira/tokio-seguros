import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_radius.dart';
import 'package:tokio_seguros/core/extensions/insurance_type_extension.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';

class InsuranceCard extends StatelessWidget {
  const InsuranceCard({super.key, required this.type, required this.onTap});

  static const size = Size(84, 74);

  final InsuranceType type;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Cotar seguro ${type.label}',
      excludeSemantics: true,
      child: Material(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppRadius.card),
        clipBehavior: .antiAlias,
        child: InkWell(
          onTap: onTap,
          child: SizedBox.fromSize(
            size: size,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
              child: Column(
                mainAxisAlignment: .center,
                spacing: 6,
                children: [
                  Icon(type.icon, color: context.primary, size: 26),
                  Text(
                    type.label,
                    textAlign: .center,
                    maxLines: 2,
                    overflow: .ellipsis,
                    style: context.textTheme.labelSmall,
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
