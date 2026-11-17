import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/core/validators/validators.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this.controller,
    required this.hint,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.textInputAction = .done,
    this.autofillHints = const [AutofillHints.password],
  });

  final TextEditingController controller;
  final String hint;
  final Validator? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextInputAction textInputAction;
  final Iterable<String> autofillHints;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscure,
      textAlign: .center,
      textInputAction: widget.textInputAction,
      autofillHints: widget.autofillHints,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hint,
        // Espaço do mesmo tamanho do olho: mantém o texto no centro.
        prefixIcon: const SizedBox(width: 48),
        suffixIcon: IconButton(
          tooltip: _obscure ? 'Mostrar senha' : 'Ocultar senha',
          onPressed: () => setState(() => _obscure = !_obscure),
          icon: Icon(
            _obscure ? LucideIcons.eyeOff : LucideIcons.eye,
            size: 18,
          ),
        ),
      ),
    );
  }
}
