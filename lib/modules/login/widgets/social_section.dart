import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/core/utils/message_error_listen_utils.dart';

/// Redes sociais só ilustrativas (fora do escopo do desafio).
class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  static const _networks = [
    ('Google', FontAwesomeIcons.google),
    ('Facebook', FontAwesomeIcons.facebookF),
    ('Twitter', FontAwesomeIcons.twitter),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Acesse através das redes sociais',
          style: context.textTheme.labelMedium,
        ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          mainAxisAlignment: .center,
          spacing: AppSpacing.sm,
          children: [
            for (final (name, icon) in _networks)
              IconButton(
                tooltip: 'Entrar com $name',
                iconSize: 22,
                icon: FaIcon(icon, color: Colors.white),
                onPressed: () => MessageErrorListenUtils.snackBar(
                  context,
                  message: 'Entrar com $name ainda não está disponível.',
                ),
              ),
          ],
        ),
      ],
    );
  }
}
