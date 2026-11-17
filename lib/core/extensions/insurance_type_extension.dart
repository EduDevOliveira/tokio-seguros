import 'package:flutter/widgets.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';

extension InsuranceTypeIcon on InsuranceType {
  IconData get icon => switch (this) {
    .auto => LucideIcons.carFront,
    .home => LucideIcons.house,
    .life => LucideIcons.heartPulse,
    .personalAccidents => LucideIcons.ambulance,
    .motorcycle => LucideIcons.motorbike,
    .business => LucideIcons.building2,
  };
}
