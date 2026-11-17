import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';

/// O login é por CPF (sem e-mail real cadastrado), então não há link de
/// redefinição para enviar: a recuperação é feita pela central.
Future<void> showForgotPasswordDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      icon: Icon(LucideIcons.lockKeyhole, color: context.primary),
      title: const Text('Esqueceu a senha?'),
      content: const Text(
        'Por segurança, a redefinição de senha é feita pela nossa Central de '
        'Atendimento. Tenha seu CPF em mãos e fale com a gente pelo menu '
        '"Telefones Importantes" depois de entrar, ou pelo site da seguradora.',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Entendi'),
        ),
      ],
    ),
  );
}
