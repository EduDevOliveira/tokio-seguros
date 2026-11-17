import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/core/utils/message_error_listen_utils.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({super.key, this.hasUnread = true});

  final bool hasUnread;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Notificações',
      onPressed: () => MessageErrorListenUtils.snackBar(
        context,
        message: 'Você não tem notificações novas.',
      ),
      icon: Badge(
        isLabelVisible: hasUnread,
        smallSize: 9,
        backgroundColor: AppColors.badge,
        child: const Icon(LucideIcons.bell),
      ),
    );
  }
}
