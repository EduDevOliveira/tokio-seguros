import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tokio_seguros/app/enums/family_relationship.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';
import 'package:tokio_seguros/domain/usecases/family/add_family_member.dart';
import 'package:tokio_seguros/domain/usecases/family/get_family_members.dart';
import 'package:tokio_seguros/domain/usecases/family/remove_family_member.dart';
import 'package:tokio_seguros/domain/usecases/policy/get_contracted_policies.dart';

import '../../../helpers/fixtures.dart';
import '../../../helpers/mocks.dart';

void main() {
  late MockFamilyRepository repository;

  setUpAll(() => registerFallbackValue(buildMember()));

  setUp(() => repository = MockFamilyRepository());

  test('GetFamilyMembers devolve a lista do usuário', () async {
    when(() => repository.list('u1')).thenAnswer((_) async => [buildMember()]);

    final result = await GetFamilyMembers(repository)(userId: 'u1');

    expect(result.getOrNull(), [buildMember()]);
  });

  test('GetFamilyMembers converte falha de armazenamento', () async {
    when(() => repository.list('u1')).thenThrow(const AppFailure.storage());

    final result = await GetFamilyMembers(repository)(userId: 'u1');

    expect(result.exceptionOrNull(), isA<StorageFailure>());
  });

  test('AddFamilyMember cria o membro com nome sem espaços e data', () async {
    final now = DateTime(2026, 11, 16, 10);
    when(
      () => repository.add('u1', any()),
    ).thenAnswer((i) async => [i.positionalArguments[1] as FamilyMemberModel]);

    final result = await AddFamilyMember(repository, clock: () => now)(
      params: const AddFamilyMemberParams(
        userId: 'u1',
        name: '  Ana Máximo ',
        relationship: FamilyRelationship.child,
      ),
    );

    final member = result.getOrThrow().single;
    expect(member.name, 'Ana Máximo');
    expect(member.relationship, FamilyRelationship.child);
    expect(member.createdAt, now);
    expect(member.id, isNotEmpty);
  });

  test('RemoveFamilyMember devolve a lista atualizada', () async {
    when(() => repository.remove('u1', 'm1')).thenAnswer((_) async => []);

    final result = await RemoveFamilyMember(repository)(
      userId: 'u1',
      memberId: 'm1',
    );

    expect(result.getOrNull(), isEmpty);
  });

  test('GetContractedPolicies repassa a lista do repositório', () async {
    final policies = MockPolicyRepository();
    when(
      () => policies.listContracted('u1'),
    ).thenAnswer((_) async => [buildPolicy()]);

    final result = await GetContractedPolicies(policies)(userId: 'u1');

    expect(result.getOrNull(), [buildPolicy()]);
  });
}
