import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    hide SelectContext, ReadContext, WatchContext;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/enums/main_menu.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/modules/main_shell/widgets/drawer_header_section.dart';
import 'package:tokio_seguros/modules/main_shell/widgets/drawer_help_card.dart';
import 'package:tokio_seguros/modules/session/bloc/session_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, required this.onSelected});

  final ValueChanged<MainMenu> onSelected;

  MainMenu _current(BuildContext context) {
    final path = context.routeState().uri.path;
    for (final item in MainMenu.values) {
      if (path.endsWith('/${item.slug}')) return item;
    }
    return .home;
  }

  void _open(BuildContext context, MainMenu item) {
    Navigator.of(context).pop();
    onSelected(item);
  }

  @override
  Widget build(BuildContext context) {
    final current = _current(context);

    return Drawer(
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            BlocBuilder<SessionBloc, SessionState>(
              bloc: context.read<SessionBloc>(),
              builder: (context, state) =>
                  DrawerHeaderSection(user: state.user),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                children: [
                  for (final item in MainMenu.values)
                    _DrawerItem(
                      item: item,
                      selected: item == current,
                      onTap: () => _open(context, item),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.sm,
                      AppSpacing.sm,
                      AppSpacing.md,
                      AppSpacing.md,
                    ),
                    child: Align(
                      alignment: .centerLeft,
                      child: TextButton.icon(
                        icon: const Icon(LucideIcons.logOut, size: 16),
                        label: const Text('Sair'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          context.read<SessionBloc>().add(
                            const SessionSignOut(),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const DrawerHelpCard(),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final MainMenu item;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      selected: selected,
      selectedTileColor: context.primary.withValues(alpha: 0.12),
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
      horizontalTitleGap: AppSpacing.md,
      leading: Icon(item.icon, size: 20, color: context.primary),
      title: Text(
        item.label,
        style: context.textTheme.labelMedium?.copyWith(
          color: selected ? context.primary : context.textPrimary,
        ),
      ),
      onTap: onTap,
    );
  }
}
