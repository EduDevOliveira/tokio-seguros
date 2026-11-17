import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/modules/auto_quote/widgets/app_web_view.dart';

class AutoQuotePage extends StatefulWidget {
  const AutoQuotePage({super.key, required this.url});

  final String url;

  @override
  State<AutoQuotePage> createState() => _AutoQuotePageState();
}

class _AutoQuotePageState extends State<AutoQuotePage> {
  int _progress = 0;

  void _back() {
    if (context.canPop()) {
      context.pop();
    } else {
      context.navigate(Routes.mainShell);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .stretch,
      children: [
        Material(
          color: AppColors.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
            child: Row(
              children: [
                IconButton(
                  tooltip: 'Voltar',
                  icon: const Icon(LucideIcons.arrowLeft),
                  onPressed: _back,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text('Assistência', style: context.textTheme.titleSmall),
                      Text(
                        InsuranceType.auto.label,
                        style: context.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: _progress < 100 ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: LinearProgressIndicator(
            minHeight: 2,
            value: _progress == 0 ? null : _progress / 100,
          ),
        ),
        Expanded(
          child: AppWebView(
            url: widget.url,
            onProgress: (progress) {
              if (mounted) setState(() => _progress = progress);
            },
          ),
        ),
      ],
    );
  }
}
