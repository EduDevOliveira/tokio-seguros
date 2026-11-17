import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tokio_seguros/data/repositories/family/family_repository.dart';

import '../../helpers/fixtures.dart';
import '../../helpers/mocks.dart';

void main() {
  late MockFamilyService service;
  late FamilyRepository repository;

  setUp(() {
    service = MockFamilyService();
    repository = FamilyRepository(service);
    when(() => service.saveAll(any(), any())).thenAnswer((_) async {});
  });

  test('add acrescenta ao fim e salva a lista inteira', () async {
    final ana = buildMember();
    final joao = buildMember(id: 'm2', name: 'João');
    when(() => service.list('u1')).thenAnswer((_) async => [ana]);

    final result = await repository.add('u1', joao);

    expect(result, [ana, joao]);
    verify(() => service.saveAll('u1', [ana, joao])).called(1);
  });

  test('remove tira só o membro com o id informado', () async {
    final ana = buildMember();
    final joao = buildMember(id: 'm2', name: 'João');
    when(() => service.list('u1')).thenAnswer((_) async => [ana, joao]);

    final result = await repository.remove('u1', 'm1');

    expect(result, [joao]);
    verify(() => service.saveAll('u1', [joao])).called(1);
  });
}
