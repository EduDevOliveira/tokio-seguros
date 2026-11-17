import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/widgets/app_brand.dart';
import 'package:tokio_seguros/modules/main_shell/widgets/notification_bell.dart';

class ShellAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShellAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          tooltip: 'Abrir menu',
          icon: const Icon(LucideIcons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      title: const AppBrand(),
      actions: const [NotificationBell(), SizedBox(width: 8)],
    );
  }
}
