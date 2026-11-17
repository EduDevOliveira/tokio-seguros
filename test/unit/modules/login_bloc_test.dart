import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/domain/models/saved_login_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/login.dart';
import 'package:tokio_seguros/modules/login/bloc/login_bloc.dart';

import '../../helpers/fixtures.dart';
import '../../helpers/mocks.dart';

void main() {
  late MockLogin login;
  late MockGetSavedLogin getSavedLogin;

  setUpAll(
    () => registerFallbackValue(const LoginParams(cpf: '', password: '')),
  );

  setUp(() {
    login = MockLogin();
    getSavedLogin = MockGetSavedLogin();
  });

  LoginBloc buildBloc() => LoginBloc(login, getSavedLogin);

  const filled = LoginState(cpf: validCpf, password: '123456');

  group('LoginStarted', () {
    blocTest<LoginBloc, LoginState>(
      'preenche o CPF salvo (com máscara) e a preferência',
      setUp: () => when(() => getSavedLogin()).thenAnswer(
        (_) async =>
            const SavedLoginModel(remember: false, cpf: validCpfDigits),
      ),
      build: buildBloc,
      act: (bloc) => bloc.add(const LoginStarted()),
      expect: () => const [
        LoginState(cpf: validCpf, remember: false, savedLoaded: true),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'não sobrescreve o CPF que já foi digitado',
      setUp: () => when(() => getSavedLogin()).thenAnswer(
        (_) async => const SavedLoginModel(cpf: validCpfDigits),
      ),
      build: buildBloc,
      seed: () => const LoginState(cpf: '111'),
      act: (bloc) => bloc.add(const LoginStarted()),
      expect: () => const [LoginState(cpf: '111', savedLoaded: true)],
    );
  });

  blocTest<LoginBloc, LoginState>(
    'atualiza CPF, senha e "Lembrar sempre"',
    build: buildBloc,
    act: (bloc) => bloc
      ..add(const LoginCpfChanged(cpf: validCpf))
      ..add(const LoginPasswordChanged(password: '123456'))
      ..add(const LoginRememberChanged(remember: false)),
    expect: () => const [
      LoginState(cpf: validCpf),
      filled,
      LoginState(cpf: validCpf, password: '123456', remember: false),
    ],
  );

  group('LoginSubmitted', () {
    blocTest<LoginBloc, LoginState>(
      'success com o usuário e envia o "Lembrar sempre" ao usecase',
      setUp: () => when(
        () => login(params: any(named: 'params')),
      ).thenAnswer((_) async => Success(buildUser())),
      build: buildBloc,
      seed: () => filled.copyWith(remember: false),
      act: (bloc) => bloc.add(const LoginSubmitted()),
      expect: () => [
        filled.copyWith(remember: false, status: .loading),
        filled.copyWith(remember: false, status: .success, user: buildUser()),
      ],
      verify: (_) => verify(
        () => login(
          params: const LoginParams(
            cpf: validCpf,
            password: '123456',
            remember: false,
          ),
        ),
      ).called(1),
    );

    blocTest<LoginBloc, LoginState>(
      'failure guarda a falha para a mensagem',
      setUp: () => when(() => login(params: any(named: 'params'))).thenAnswer(
        (_) async => const Failure(AuthFailure.invalidCredentials()),
      ),
      build: buildBloc,
      seed: () => filled,
      act: (bloc) => bloc.add(const LoginSubmitted()),
      expect: () => [
        filled.copyWith(status: .loading),
        filled.copyWith(
          status: .failure,
          failure: const AuthFailure.invalidCredentials(),
        ),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'ignora toque repetido enquanto carrega',
      build: buildBloc,
      seed: () => filled.copyWith(status: .loading),
      act: (bloc) => bloc.add(const LoginSubmitted()),
      expect: () => const <LoginState>[],
      verify: (_) => verifyNever(() => login(params: any(named: 'params'))),
    );
  });
}
