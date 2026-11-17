import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/domain/models/saved_login_model.dart';
import 'package:tokio_seguros/domain/usecases/auth/get_saved_login.dart';
import 'package:tokio_seguros/domain/usecases/auth/login.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';
import 'package:tokio_seguros/domain/usecases/auth/sign_out.dart';
import 'package:tokio_seguros/domain/usecases/auth/user_current.dart';

import '../../../helpers/fixtures.dart';
import '../../../helpers/mocks.dart';

void main() {
  late MockAuthRepository repository;

  setUpAll(() {
    registerFallbackValue(const SavedLoginModel());
    registerFallbackValue(
      const RegisterParams(name: '', cpf: '', password: ''),
    );
  });

  setUp(() {
    repository = MockAuthRepository();
    when(() => repository.saveLogin(any())).thenAnswer((_) async {});
    when(() => repository.signOut()).thenAnswer((_) async {});
  });

  group('Login', () {
    void stubSignIn() => when(
      () => repository.signIn(
        cpf: any(named: 'cpf'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => buildUser());

    test('com "Lembrar sempre" salva o CPF só com dígitos', () async {
      stubSignIn();

      final result = await Login(repository)(
        params: const LoginParams(cpf: validCpf, password: '123456'),
      );

      expect(result.getOrNull(), buildUser());
      verify(
        () => repository.saveLogin(
          const SavedLoginModel(cpf: validCpfDigits),
        ),
      ).called(1);
    });

    test('sem "Lembrar sempre" não guarda o CPF', () async {
      stubSignIn();

      await Login(repository)(
        params: const LoginParams(
          cpf: validCpf,
          password: '123456',
          remember: false,
        ),
      );

      verify(
        () => repository.saveLogin(const SavedLoginModel(remember: false)),
      ).called(1);
    });

    test('falha de credencial vira Failure e não salva nada', () async {
      when(
        () => repository.signIn(
          cpf: any(named: 'cpf'),
          password: any(named: 'password'),
        ),
      ).thenThrow(const AuthFailure.invalidCredentials());

      final result = await Login(repository)(
        params: const LoginParams(cpf: validCpf, password: 'x'),
      );

      expect(result.exceptionOrNull(), const AuthFailure.invalidCredentials());
      verifyNever(() => repository.saveLogin(any()));
    });

    test('erro desconhecido vira unexpected', () async {
      when(
        () => repository.signIn(
          cpf: any(named: 'cpf'),
          password: any(named: 'password'),
        ),
      ).thenThrow(Exception('boom'));

      final result = await Login(repository)(
        params: const LoginParams(cpf: validCpf, password: 'x'),
      );

      expect(result.exceptionOrNull(), const AuthFailure.unexpected());
    });
  });

  group('Register', () {
    const params = RegisterParams(
      name: 'Caio Máximo',
      cpf: validCpf,
      password: '123456',
    );

    test('cadastra e já deixa o CPF lembrado', () async {
      when(() => repository.signUp(params))
          .thenAnswer((_) async => buildUser());

      final result = await Register(repository)(params: params);

      expect(result.isSuccess(), isTrue);
      verify(
        () => repository.saveLogin(const SavedLoginModel(cpf: validCpfDigits)),
      ).called(1);
    });

    test('CPF já cadastrado vira Failure', () async {
      when(
        () => repository.signUp(params),
      ).thenThrow(const AuthFailure.cpfAlreadyRegistered());

      final result = await Register(repository)(params: params);

      expect(
        result.exceptionOrNull(),
        const AuthFailure.cpfAlreadyRegistered(),
      );
    });
  });

  group('UserCurrent', () {
    test('sem sessão devolve nulo', () async {
      when(() => repository.restoreSession()).thenAnswer((_) async => null);

      expect(await UserCurrent(repository)(), isNull);
    });

    test('com sessão e "Lembrar sempre" devolve o usuário', () async {
      when(
        () => repository.restoreSession(),
      ).thenAnswer((_) async => buildUser());
      when(
        () => repository.readSavedLogin(),
      ).thenAnswer((_) async => const SavedLoginModel());

      expect(await UserCurrent(repository)(), buildUser());
      verifyNever(() => repository.signOut());
    });

    test('sem "Lembrar sempre" encerra a sessão ao abrir o app', () async {
      when(
        () => repository.restoreSession(),
      ).thenAnswer((_) async => buildUser());
      when(
        () => repository.readSavedLogin(),
      ).thenAnswer((_) async => const SavedLoginModel(remember: false));

      expect(await UserCurrent(repository)(), isNull);
      verify(() => repository.signOut()).called(1);
    });
  });

  test('GetSavedLogin devolve o padrão se a leitura falhar', () async {
    when(() => repository.readSavedLogin()).thenThrow(Exception('io'));

    expect(await GetSavedLogin(repository)(), const SavedLoginModel());
  });

  test('SignOut engole o erro do SDK', () async {
    when(() => repository.signOut()).thenThrow(Exception('offline'));

    await expectLater(SignOut(repository)(), completes);
  });
}
