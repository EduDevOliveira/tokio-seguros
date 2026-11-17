import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tokio_seguros/core/validators/validators.dart';

class CpfField extends StatelessWidget {
  const CpfField({
    super.key,
    required this.controller,
    required this.formatter,
    this.onChanged,
    this.onSubmitted,
  });

  final TextEditingController controller;

  /// Uma instância por campo (ver Formatter.cpf).
  final MaskTextInputFormatter formatter;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      textAlign: .center,
      textInputAction: .next,
      autofillHints: const [AutofillHints.username],
      inputFormatters: [formatter],
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: Validators.compose([
        Validators.required('Informe seu CPF'),
        Validators.cpf(),
      ]),
      decoration: const InputDecoration(hintText: 'CPF'),
    );
  }
}
