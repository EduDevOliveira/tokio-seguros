import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/theme/app_gradients.dart';

/// Botão redondo com seta (envio do login/cadastro). Desabilitado enquanto
/// [loading] para evitar envio duplo.
class GradientCircleButton extends StatelessWidget {
  const GradientCircleButton({
    super.key,
    required this.onPressed,
    required this.tooltip,
    this.loading = false,
    this.size = 60,
  });

  final VoidCallback? onPressed;
  final String tooltip;
  final bool loading;
  final double size;

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null && !loading;

    return Tooltip(
      message: tooltip,
      child: Semantics(
        button: true,
        enabled: enabled,
        label: tooltip,
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppGradients.button,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.35),
                blurRadius: 14,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Material(
            type: MaterialType.transparency,
            shape: const CircleBorder(),
            clipBehavior: .antiAlias,
            child: InkWell(
              onTap: enabled ? onPressed : null,
              child: SizedBox.square(
                dimension: size,
                child: Center(
                  child: loading
                      ? const SizedBox.square(
                          dimension: 22,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.4,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(
                          LucideIcons.arrowRight,
                          color: Colors.white,
                          size: 26,
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
