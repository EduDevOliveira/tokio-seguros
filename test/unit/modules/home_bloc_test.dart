import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:result_dart/result_dart.dart';
import 'package:tokio_seguros/app/enums/family_relationship.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/domain/usecases/family/add_family_member.dart';
import 'package:tokio_seguros/modules/home/bloc/home_bloc.dart';

import '../../helpers/fixtures.dart';
import '../../helpers/mocks.dart';

void main() {
  late MockGetFamilyMembers getFamily;
  late MockAddFamilyMember addMember;
  late MockRemoveFamilyMember removeMember;
  late MockGetContractedPolicies getPolicies;

  setUpAll(
    () => registerFallbackValue(
      const AddFamilyMemberParams(
        userId: '',
        name: '',
        relationship: FamilyRelationship.other,
      ),
    ),
  );

  setUp(() {
    getFamily = MockGetFamilyMembers();
    addMember = MockAddFamilyMember();
    removeMember = MockRemoveFamilyMember();
    getPolicies = MockGetContractedPolicies();
  });

  HomeBloc buildBloc() =>
      HomeBloc(getFamily, addMember, removeMember, getPolicies);

  group('HomeStarted', () {
    blocTest<HomeBloc, HomeState>(
      'carrega família e contratados (lista vazia de seguros)',
      setUp: () {
        when(
          () => getFamily(userId: 'u1'),
        ).thenAnswer((_) async => Success([buildMember()]));
        when(
          () => getPolicies(userId: 'u1'),
        ).thenAnswer((_) async => const Success([]));
      },
      build: buildBloc,
      act: (bloc) => bloc.add(const HomeStarted(userId: 'u1')),
      expect: () => [
        const HomeState(status: .loading, userId: 'u1'),
        HomeState(status: .success, userId: 'u1', family: [buildMember()]),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'falha em qualquer carga vira failure',
      setUp: () {
        when(
          () => getFamily(userId: 'u1'),
        ).thenAnswer((_) async => const Failure(AppFailure.storage()));
        when(
          () => getPolicies(userId: 'u1'),
        ).thenAnswer((_) async => const Success([]));
      },
      build: buildBloc,
      act: (bloc) => bloc.add(const HomeStarted(userId: 'u1')),
      expect: () => const [
        HomeState(status: .loading, userId: 'u1'),
        HomeState(
          status: .failure,
          userId: 'u1',
          failure: AppFailure.storage(),
        ),
      ],
    );
  });

  group('família', () {
    const loaded = HomeState(status: .success, userId: 'u1');

    blocTest<HomeBloc, HomeState>(
      'adicionar envia o usuário da sessão e atualiza a lista',
      setUp: () => when(
        () => addMember(params: any(named: 'params')),
      ).thenAnswer((_) async => Success([buildMember()])),
      build: buildBloc,
      seed: () => loaded,
      act: (bloc) => bloc.add(
        const HomeFamilyMemberAdded(
          name: 'Ana Máximo',
          relationship: FamilyRelationship.spouse,
        ),
      ),
      expect: () => [
        loaded.copyWith(familyStatus: .saving),
        loaded.copyWith(familyStatus: .added, family: [buildMember()]),
      ],
      verify: (_) => verify(
        () => addMember(
          params: const AddFamilyMemberParams(
            userId: 'u1',
            name: 'Ana Máximo',
            relationship: FamilyRelationship.spouse,
          ),
        ),
      ).called(1),
    );

    blocTest<HomeBloc, HomeState>(
      'remover atualiza a lista',
      setUp: () => when(
        () => removeMember(userId: 'u1', memberId: 'm1'),
      ).thenAnswer((_) async => const Success([])),
      build: buildBloc,
      seed: () => loaded.copyWith(family: [buildMember()]),
      act: (bloc) => bloc.add(const HomeFamilyMemberRemoved(memberId: 'm1')),
      expect: () => [
        loaded.copyWith(familyStatus: .saving, family: [buildMember()]),
        loaded.copyWith(familyStatus: .removed),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'erro ao salvar mantém a lista e expõe a falha',
      setUp: () => when(
        () => addMember(params: any(named: 'params')),
      ).thenAnswer((_) async => const Failure(AppFailure.storage())),
      build: buildBloc,
      seed: () => loaded,
      act: (bloc) => bloc.add(
        const HomeFamilyMemberAdded(
          name: 'Ana',
          relationship: FamilyRelationship.other,
        ),
      ),
      expect: () => [
        loaded.copyWith(familyStatus: .saving),
        loaded.copyWith(
          familyStatus: .failure,
          failure: const AppFailure.storage(),
        ),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'sem usuário carregado não faz nada',
      build: buildBloc,
      act: (bloc) => bloc.add(
        const HomeFamilyMemberAdded(
          name: 'Ana',
          relationship: FamilyRelationship.other,
        ),
      ),
      expect: () => const <HomeState>[],
    );
  });
}
