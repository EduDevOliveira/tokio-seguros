import 'package:flutter/material.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/modules/login/widgets/forgot_password_dialog.dart';

class RememberForgotSection extends StatelessWidget {
  const RememberForgotSection({
    super.key,
    required this.remember,
    required this.onRememberChanged,
  });

  final bool remember;
  final ValueChanged<bool> onRememberChanged;

  @override
  Widget build(BuildContext context) {
    final labelStyle = context.textTheme.labelMedium;

    return Wrap(
      alignment: .spaceBetween,
      crossAxisAlignment: .center,
      runSpacing: 4,
      spacing: 8,
      children: [
        MergeSemantics(
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => onRememberChanged(!remember),
            child: Row(
              mainAxisSize: .min,
              children: [
                Checkbox(
                  value: remember,
                  onChanged: (value) => onRememberChanged(value ?? false),
                ),
                Text('Lembrar sempre', style: labelStyle),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ),
        TextButton(
          onPressed: () => showForgotPasswordDialog(context),
          child: const Text('Esqueceu a senha?'),
        ),
      ],
    );
  }
}
