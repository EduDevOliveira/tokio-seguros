import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';

enum AuthTab {
  signIn('Entrar'),
  signUp('Cadastrar');

  const AuthTab(this.label);

  final String label;
}

class AuthTabs extends StatelessWidget {
  const AuthTabs({super.key, required this.selected, required this.onChanged});

  final AuthTab selected;
  final ValueChanged<AuthTab> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSpacing.lg,
      children: [
        for (final tab in AuthTab.values)
          _TabLabel(
            label: tab.label,
            selected: tab == selected,
            onTap: () => onChanged(tab),
          ),
      ],
    );
  }
}

class _TabLabel extends StatelessWidget {
  const _TabLabel({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? context.primary : context.textPrimary;

    return Semantics(
      selected: selected,
      button: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.only(bottom: 2),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: selected ? color : Colors.transparent,
                  width: 1.5,
                ),
              ),
            ),
            child: Text(
              label,
              style: context.textTheme.titleMedium?.copyWith(
                color: color,
                fontWeight: selected ? .w600 : .w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
