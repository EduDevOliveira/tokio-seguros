import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/domain/usecases/auth/get_saved_login.dart';
import 'package:tokio_seguros/domain/usecases/auth/login.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';
import 'package:tokio_seguros/modules/login/bloc/login_bloc.dart';
import 'package:tokio_seguros/modules/login/bloc/register_bloc.dart';
import 'package:tokio_seguros/modules/login/pages/login_page.dart';

final loginModule = createModule(
  path: Routes.login,
  register: (c) {
    c
      ..addLazySingleton(Login.new)
      ..addLazySingleton(Register.new)
      ..addLazySingleton(GetSavedLogin.new)
      ..route(
        '/',
        // Entrar e Cadastrar são abas do mesmo card: os dois blocs vivem na rota.
        provide: (s) => s
          ..addStreamable<LoginBloc>(
            LoginBloc.new,
            (v) => v.stream,
            (v) => v.close(),
          )
          ..addStreamable<RegisterBloc>(
            RegisterBloc.new,
            (v) => v.stream,
            (v) => v.close(),
          ),
        child: (context, state) => const LoginPage(),
      );
  },
);
