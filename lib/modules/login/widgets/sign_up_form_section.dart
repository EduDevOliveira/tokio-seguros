import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/validators/validators.dart';
import 'package:tokio_seguros/modules/login/bloc/register_bloc.dart';
import 'package:tokio_seguros/modules/login/widgets/cpf_field.dart';
import 'package:tokio_seguros/modules/login/widgets/password_field.dart';

class SignUpFormSection extends StatelessWidget {
  const SignUpFormSection({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.cpfController,
    required this.passwordController,
    required this.confirmController,
    required this.cpfFormatter,
    required this.onSubmit,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController cpfController;
  final TextEditingController passwordController;
  final TextEditingController confirmController;
  final MaskTextInputFormatter cpfFormatter;
  final VoidCallback onSubmit;

  static const minPassword = 6;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterBloc>();

    return AutofillGroup(
      child: Form(
        key: formKey,
        child: Column(
          spacing: AppSpacing.md,
          children: [
            TextFormField(
              controller: nameController,
              textAlign: .center,
              textCapitalization: .words,
              textInputAction: .next,
              autofillHints: const [AutofillHints.name],
              onChanged: (name) => bloc.add(RegisterNameChanged(name: name)),
              validator: Validators.compose([
                Validators.required('Informe seu nome'),
                Validators.fullName(),
              ]),
              decoration: const InputDecoration(hintText: 'Nome completo'),
            ),
            CpfField(
              controller: cpfController,
              formatter: cpfFormatter,
              onChanged: (cpf) => bloc.add(RegisterCpfChanged(cpf: cpf)),
            ),
            PasswordField(
              controller: passwordController,
              hint: 'Senha',
              textInputAction: .next,
              autofillHints: const [AutofillHints.newPassword],
              onChanged: (password) =>
                  bloc.add(RegisterPasswordChanged(password: password)),
              validator: Validators.compose([
                Validators.required('Crie uma senha'),
                Validators.minLength(minPassword),
              ]),
            ),
            PasswordField(
              controller: confirmController,
              hint: 'Confirmar senha',
              autofillHints: const [AutofillHints.newPassword],
              onSubmitted: (_) => onSubmit(),
              validator: Validators.compose([
                Validators.required('Repita a senha'),
                Validators.passwordRepeat(() => passwordController.text),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
