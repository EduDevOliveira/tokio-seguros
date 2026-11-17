import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/validators/validators.dart';
import 'package:tokio_seguros/modules/login/bloc/login_bloc.dart';
import 'package:tokio_seguros/modules/login/widgets/cpf_field.dart';
import 'package:tokio_seguros/modules/login/widgets/password_field.dart';
import 'package:tokio_seguros/modules/login/widgets/remember_forgot_section.dart';

class SignInFormSection extends StatelessWidget {
  const SignInFormSection({
    super.key,
    required this.formKey,
    required this.cpfController,
    required this.passwordController,
    required this.cpfFormatter,
    required this.remember,
    required this.onSubmit,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController cpfController;
  final TextEditingController passwordController;
  final MaskTextInputFormatter cpfFormatter;
  final bool remember;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();

    return AutofillGroup(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: AppSpacing.md,
          children: [
            CpfField(
              controller: cpfController,
              formatter: cpfFormatter,
              onChanged: (cpf) => bloc.add(LoginCpfChanged(cpf: cpf)),
            ),
            PasswordField(
              controller: passwordController,
              hint: 'Senha',
              validator: Validators.required('Informe sua senha'),
              onChanged: (password) =>
                  bloc.add(LoginPasswordChanged(password: password)),
              onSubmitted: (_) => onSubmit(),
            ),
            RememberForgotSection(
              remember: remember,
              onRememberChanged: (value) =>
                  bloc.add(LoginRememberChanged(remember: value)),
            ),
          ],
        ),
      ),
    );
  }
}
