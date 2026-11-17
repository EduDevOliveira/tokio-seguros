import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tokio_seguros/app/enums/family_relationship.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';
import 'package:tokio_seguros/modules/home/widgets/add_family_member_sheet.dart';
import 'package:tokio_seguros/modules/home/widgets/contracted_section.dart';
import 'package:tokio_seguros/modules/home/widgets/family_section.dart';
import 'package:tokio_seguros/modules/home/widgets/quote_section.dart';

import '../helpers/fixtures.dart';
import '../helpers/pump_app.dart';

void main() {
  group('QuoteSection', () {
    testWidgets('mostra os produtos pedidos e avisa qual foi tocado', (
      tester,
    ) async {
      InsuranceType? selected;
      await tester.pumpApp(
        QuoteSection(horizontalPadding: 16, onSelected: (t) => selected = t),
      );

      expect(find.text('Cotar e Contratar'), findsOneWidget);
      for (final label in ['Automóvel', 'Residência', 'Vida']) {
        expect(find.text(label), findsOneWidget);
      }

      await tester.tap(find.text('Automóvel'));
      expect(selected, InsuranceType.auto);
    });
  });

  group('FamilySection', () {
    testWidgets('vazia: card de adicionar chama onAdd', (tester) async {
      var added = 0;
      await tester.pumpApp(
        FamilySection(
          members: const [],
          onAdd: () => added++,
          onRemove: (_) {},
        ),
      );

      await tester.tap(find.textContaining('Adicione aqui membros'));
      expect(added, 1);
    });

    testWidgets('com membros: lista e permite remover', (tester) async {
      final member = buildMember();
      Object? removed;
      await tester.pumpApp(
        FamilySection(
          members: [member],
          onAdd: () {},
          onRemove: (m) => removed = m,
        ),
      );

      expect(find.text('Ana Máximo'), findsOneWidget);
      expect(find.text('Cônjuge'), findsOneWidget);
      expect(find.text('Adicionar'), findsOneWidget);

      await tester.tap(find.byTooltip('Remover Ana Máximo'));
      expect(removed, member);
    });
  });

  group('ContractedSection', () {
    testWidgets('sem seguros mostra a mensagem de lista vazia', (tester) async {
      await tester.pumpApp(const ContractedSection(policies: []));

      expect(
        find.text('Você ainda não possui seguros contratados.'),
        findsOneWidget,
      );
    });

    testWidgets('com seguros lista cada apólice', (tester) async {
      await tester.pumpApp(ContractedSection(policies: [buildPolicy()]));

      expect(find.text('Automóvel'), findsOneWidget);
      expect(find.textContaining('válido até 31/01/2027'), findsOneWidget);
    });
  });

  testWidgets('AddFamilyMemberSheet valida e devolve o familiar', (
    tester,
  ) async {
    NewFamilyMember? result;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => TextButton(
            onPressed: () async =>
                result = await showAddFamilyMemberSheet(context),
            child: const Text('abrir'),
          ),
        ),
      ),
    );
    await tester.tap(find.text('abrir'));
    await tester.pumpAndSettle();

    // Sem preencher: mostra os erros e não fecha.
    await tester.tap(find.widgetWithText(ElevatedButton, 'Adicionar'));
    await tester.pumpAndSettle();
    expect(find.text('Informe o nome'), findsOneWidget);
    expect(find.text('Escolha o parentesco'), findsOneWidget);

    await tester.enterText(find.byType(TextFormField), '  Ana Máximo ');
    await tester.tap(find.byType(DropdownButtonFormField<FamilyRelationship>));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Mãe').last);
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ElevatedButton, 'Adicionar'));
    await tester.pumpAndSettle();

    expect(result?.name, 'Ana Máximo');
    expect(result?.relationship, FamilyRelationship.mother);
  });
}
