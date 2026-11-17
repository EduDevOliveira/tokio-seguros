import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_radius.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/gradient_circle_button.dart';

class AuthCard extends StatelessWidget {
  const AuthCard({
    super.key,
    required this.child,
    required this.onSubmit,
    required this.submitTooltip,
    this.loading = false,
  });

  final Widget child;
  final VoidCallback onSubmit;
  final String submitTooltip;
  final bool loading;

  static const _buttonSize = 60.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: _buttonSize / 2),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.lg,
              AppSpacing.lg,
              _buttonSize / 2 + AppSpacing.md,
            ),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(AppRadius.card),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.3),
                  blurRadius: 24,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: AnimatedSize(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOut,
              alignment: .topCenter,
              child: child,
            ),
          ),
        ),
        GradientCircleButton(
          tooltip: submitTooltip,
          loading: loading,
          onPressed: onSubmit,
        ),
      ],
    );
  }
}
