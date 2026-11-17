import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/section_title.dart';
import 'package:tokio_seguros/modules/home/widgets/insurance_card.dart';

/// "Cotar e Contratar": rola na horizontal no celular, como no layout.
class QuoteSection extends StatelessWidget {
  const QuoteSection({
    super.key,
    required this.onSelected,
    required this.horizontalPadding,
  });

  final ValueChanged<InsuranceType> onSelected;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: const SectionTitle('Cotar e Contratar'),
        ),
        SizedBox(
          height: InsuranceCard.size.height,
          child: ListView.separated(
            scrollDirection: .horizontal,
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            itemCount: InsuranceType.values.length,
            separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.sm),
            itemBuilder: (context, index) {
              final type = InsuranceType.values[index];
              return InsuranceCard(type: type, onTap: () => onSelected(type));
            },
          ),
        ),
      ],
    );
  }
}
