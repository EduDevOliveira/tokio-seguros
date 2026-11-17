import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';
import 'package:tokio_seguros/modules/login/bloc/register_bloc.dart';

import '../../helpers/fixtures.dart';
import '../../helpers/mocks.dart';

void main() {
  late MockRegister register;

  setUpAll(
    () => registerFallbackValue(
      const RegisterParams(name: '', cpf: '', password: ''),
    ),
  );

  setUp(() => register = MockRegister());

  RegisterBloc buildBloc() => RegisterBloc(register);

  const filled = RegisterState(
    name: 'Caio Máximo',
    cpf: validCpf,
    password: '123456',
  );

  blocTest<RegisterBloc, RegisterState>(
    'atualiza os campos',
    build: buildBloc,
    act: (bloc) => bloc
      ..add(const RegisterNameChanged(name: 'Caio Máximo'))
      ..add(const RegisterCpfChanged(cpf: validCpf))
      ..add(const RegisterPasswordChanged(password: '123456')),
    expect: () => const [
      RegisterState(name: 'Caio Máximo'),
      RegisterState(name: 'Caio Máximo', cpf: validCpf),
      filled,
    ],
  );

  blocTest<RegisterBloc, RegisterState>(
    'success envia os dados ao usecase',
    setUp: () => when(
      () => register(params: any(named: 'params')),
    ).thenAnswer((_) async => Success(buildUser())),
    build: buildBloc,
    seed: () => filled,
    act: (bloc) => bloc.add(const RegisterSubmitted()),
    expect: () => [
      filled.copyWith(status: .loading),
      filled.copyWith(status: .success, user: buildUser()),
    ],
    verify: (_) => verify(
      () => register(
        params: const RegisterParams(
          name: 'Caio Máximo',
          cpf: validCpf,
          password: '123456',
        ),
      ),
    ).called(1),
  );

  blocTest<RegisterBloc, RegisterState>(
    'CPF já cadastrado vira failure',
    setUp: () => when(() => register(params: any(named: 'params'))).thenAnswer(
      (_) async => const Failure(AuthFailure.cpfAlreadyRegistered()),
    ),
    build: buildBloc,
    seed: () => filled,
    act: (bloc) => bloc.add(const RegisterSubmitted()),
    expect: () => [
      filled.copyWith(status: .loading),
      filled.copyWith(
        status: .failure,
        failure: const AuthFailure.cpfAlreadyRegistered(),
      ),
    ],
  );
}
