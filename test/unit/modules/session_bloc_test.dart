import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tokio_seguros/modules/session/bloc/session_bloc.dart';

import '../../helpers/fixtures.dart';
import '../../helpers/mocks.dart';

void main() {
  late MockUserCurrent userCurrent;
  late MockSignOut signOut;

  setUp(() {
    userCurrent = MockUserCurrent();
    signOut = MockSignOut();
    when(() => signOut()).thenAnswer((_) async {});
  });

  SessionBloc buildBloc() => SessionBloc(userCurrent, signOut);

  blocTest<SessionBloc, SessionState>(
    'sessão restaurada → authenticated com o usuário',
    setUp: () => when(() => userCurrent()).thenAnswer((_) async => buildUser()),
    build: buildBloc,
    act: (bloc) => bloc.add(const SessionVerifyRequested()),
    expect: () => [
      const SessionState(status: .loading),
      SessionState(status: .authenticated, user: buildUser()),
    ],
  );

  blocTest<SessionBloc, SessionState>(
    'sem sessão → unauthenticated',
    setUp: () => when(() => userCurrent()).thenAnswer((_) async => null),
    build: buildBloc,
    act: (bloc) => bloc.add(const SessionVerifyRequested()),
    expect: () => const [
      SessionState(status: .loading),
      SessionState(status: .unauthenticated),
    ],
  );

  blocTest<SessionBloc, SessionState>(
    'login concluído inicia a sessão sem nova consulta',
    build: buildBloc,
    act: (bloc) => bloc.add(SessionStarted(user: buildUser())),
    expect: () => [SessionState(status: .authenticated, user: buildUser())],
    verify: (_) => verifyNever(() => userCurrent()),
  );

  blocTest<SessionBloc, SessionState>(
    'sair limpa o usuário',
    build: buildBloc,
    seed: () => SessionState(status: .authenticated, user: buildUser()),
    act: (bloc) => bloc.add(const SessionSignOut()),
    expect: () => const [SessionState(status: .unauthenticated)],
    verify: (_) => verify(() => signOut()).called(1),
  );
}
