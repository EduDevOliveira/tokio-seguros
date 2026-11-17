import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_seguros/app/errors/auth/auth_failure.dart';
import 'package:tokio_seguros/data/services/auth/mock_auth_service.dart';
import 'package:tokio_seguros/domain/usecases/auth/register.dart';

void main() {
  late MockAuthService service;

  setUp(() => service = MockAuthService(delay: Duration.zero));

  test('entra com a conta demo (CPF com ou sem máscara)', () async {
    final user = await service.signIn(
      cpf: '52998224725',
      password: MockAuthService.demoPassword,
    );

    expect(user.name, MockAuthService.demoName);
    expect(service.currentUser, user);
    expect(await service.restoreSession(), user);
  });

  test('senha errada lança invalidCredentials', () {
    expect(
      () => service.signIn(cpf: MockAuthService.demoCpf, password: 'errada'),
      throwsA(const AuthFailure.invalidCredentials()),
    );
  });

  test('cadastro novo entra logado; CPF repetido é recusado', () async {
    const params = RegisterParams(
      name: 'Ana Souza',
      cpf: '111.444.777-35',
      password: '123456',
    );

    final user = await service.signUp(params);
    expect(user.cpf, '11144477735');
    expect(service.currentUser, user);

    expect(
      () => service.signUp(params),
      throwsA(const AuthFailure.cpfAlreadyRegistered()),
    );
  });

  test('signOut limpa a sessão', () async {
    await service.signIn(
      cpf: MockAuthService.demoCpf,
      password: MockAuthService.demoPassword,
    );
    await service.signOut();

    expect(service.currentUser, isNull);
  });
}
