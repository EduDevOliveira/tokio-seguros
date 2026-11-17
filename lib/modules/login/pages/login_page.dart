import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    hide SelectContext, ReadContext, WatchContext;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/auth/app_auth.dart';
import 'package:tokio_seguros/core/formatter/formatter.dart';
import 'package:tokio_seguros/core/responsive/breakpoints.dart';
import 'package:tokio_seguros/core/utils/message_error_listen_utils.dart';
import 'package:tokio_seguros/data/services/auth/mock_auth_service.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';
import 'package:tokio_seguros/modules/login/bloc/login_bloc.dart';
import 'package:tokio_seguros/modules/login/bloc/register_bloc.dart';
import 'package:tokio_seguros/modules/login/widgets/auth_background.dart';
import 'package:tokio_seguros/modules/login/widgets/auth_card.dart';
import 'package:tokio_seguros/modules/login/widgets/auth_header_section.dart';
import 'package:tokio_seguros/modules/login/widgets/auth_tabs.dart';
import 'package:tokio_seguros/modules/login/widgets/demo_account_banner.dart';
import 'package:tokio_seguros/modules/login/widgets/sign_in_form_section.dart';
import 'package:tokio_seguros/modules/login/widgets/sign_up_form_section.dart';
import 'package:tokio_seguros/modules/login/widgets/social_section.dart';
import 'package:tokio_seguros/modules/session/bloc/session_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthTab _tab = .signIn;

  final _signInForm = GlobalKey<FormState>();
  final _signInCpf = TextEditingController();
  final _signInPassword = TextEditingController();
  final _signInCpfMask = Formatter.cpf();

  final _signUpForm = GlobalKey<FormState>();
  final _signUpName = TextEditingController();
  final _signUpCpf = TextEditingController();
  final _signUpPassword = TextEditingController();
  final _signUpConfirm = TextEditingController();
  final _signUpCpfMask = Formatter.cpf();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => context.read<LoginBloc>().add(const LoginStarted()),
    );
    super.initState();
  }

  @override
  void dispose() {
    for (final controller in [
      _signInCpf,
      _signInPassword,
      _signUpName,
      _signUpCpf,
      _signUpPassword,
      _signUpConfirm,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    switch (_tab) {
      case .signIn:
        _submitSignIn();
      case .signUp:
        _submitSignUp();
    }
  }

  void _submitSignIn() {
    if (!(_signInForm.currentState?.validate() ?? false)) return;

    context.read<LoginBloc>()
      ..add(LoginCpfChanged(cpf: _signInCpf.text))
      ..add(LoginPasswordChanged(password: _signInPassword.text))
      ..add(const LoginSubmitted());
  }

  void _submitSignUp() {
    if (!(_signUpForm.currentState?.validate() ?? false)) return;
    context.read<RegisterBloc>()
      ..add(RegisterNameChanged(name: _signUpName.text))
      ..add(RegisterCpfChanged(cpf: _signUpCpf.text))
      ..add(RegisterPasswordChanged(password: _signUpPassword.text))
      ..add(const RegisterSubmitted());
  }

  void _fillDemo() {
    setState(() => _tab = .signIn);
    _setCpf(MockAuthService.demoCpf);
    _signInPassword.text = MockAuthService.demoPassword;
    _submit();
  }

  void _setCpf(String cpf) {
    _signInCpf.value = _signInCpfMask.formatEditUpdate(
      TextEditingValue.empty,
      TextEditingValue(text: cpf),
    );
  }

  void _enter(UserModel user) {
    TextInput.finishAutofillContext();
    context.read<SessionBloc>().add(SessionStarted(user: user));
    context.navigate(Routes.mainShell);
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = context.screenSize.isMobile;

    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(
            bloc: context.read<LoginBloc>(),
            listenWhen: (previous, current) =>
                previous.status != current.status ||
                previous.savedLoaded != current.savedLoaded,
            listener: (context, state) {
              if (state.savedLoaded && _signInCpf.text.isEmpty) {
                _setCpf(state.cpf);
              }
              if (state.status == .success) _enter(state.user!);
              if (state.status == .failure) {
                MessageErrorListenUtils.snackBar(context, error: state.failure);
              }
            },
          ),
          BlocListener<RegisterBloc, RegisterState>(
            bloc: context.read<RegisterBloc>(),
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) {
              if (state.status == .success) _enter(state.user!);
              if (state.status == .failure) {
                MessageErrorListenUtils.snackBar(context, error: state.failure);
              }
            },
          ),
        ],
        child: Stack(
          children: [
            const AuthBackground(),
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  keyboardDismissBehavior: .onDrag,
                  padding: EdgeInsets.symmetric(
                    horizontal: context.pagePadding + AppSpacing.sm,
                    vertical: AppSpacing.lg,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                      crossAxisAlignment: .stretch,
                      children: [
                        AuthHeaderSection(centered: !isMobile),
                        SizedBox(
                          height: isMobile ? AppSpacing.xl : AppSpacing.xxl * 2,
                        ),
                        if (AppAuth.isMock) ...[
                          DemoAccountBanner(onUse: _fillDemo),
                          const SizedBox(height: AppSpacing.md),
                        ],
                        _buildCard(),
                        const SizedBox(height: AppSpacing.xl),
                        const SocialSection(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard() {
    return BlocBuilder<LoginBloc, LoginState>(
      bloc: context.read<LoginBloc>(),
      builder: (context, login) {
        return BlocBuilder<RegisterBloc, RegisterState>(
          bloc: context.read<RegisterBloc>(),
          builder: (context, register) {
            final loading = switch (_tab) {
              .signIn => login.status == .loading,
              .signUp => register.status == .loading,
            };

            return AuthCard(
              loading: loading,
              submitTooltip: _tab.label,
              onSubmit: _submit,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  AuthTabs(
                    selected: _tab,
                    onChanged: (tab) => setState(() => _tab = tab),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  switch (_tab) {
                    .signIn => SignInFormSection(
                      formKey: _signInForm,
                      cpfController: _signInCpf,
                      passwordController: _signInPassword,
                      cpfFormatter: _signInCpfMask,
                      remember: login.remember,
                      onSubmit: _submit,
                    ),
                    .signUp => SignUpFormSection(
                      formKey: _signUpForm,
                      nameController: _signUpName,
                      cpfController: _signUpCpf,
                      passwordController: _signUpPassword,
                      confirmController: _signUpConfirm,
                      cpfFormatter: _signUpCpfMask,
                      onSubmit: _submit,
                    ),
                  },
                ],
              ),
            );
          },
        );
      },
    );
  }
}
