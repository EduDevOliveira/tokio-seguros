import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/enums/family_relationship.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/core/extensions/theme_extensions.dart';
import 'package:tokio_seguros/core/validators/validators.dart';

typedef NewFamilyMember = ({String name, FamilyRelationship relationship});

/// Abre o formulário e devolve o membro preenchido (ou nulo se cancelar).
Future<NewFamilyMember?> showAddFamilyMemberSheet(BuildContext context) {
  return showModalBottomSheet<NewFamilyMember>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) => const AddFamilyMemberSheet(),
  );
}

class AddFamilyMemberSheet extends StatefulWidget {
  const AddFamilyMemberSheet({super.key});

  @override
  State<AddFamilyMemberSheet> createState() => _AddFamilyMemberSheetState();
}

class _AddFamilyMemberSheetState extends State<AddFamilyMemberSheet> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  FamilyRelationship? _relationship;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  void _save() {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    Navigator.of(context).pop<NewFamilyMember>((
      name: _name.text.trim(),
      relationship: _relationship!,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Sobe junto com o teclado.
      padding: EdgeInsets.only(
        left: AppSpacing.lg,
        right: AppSpacing.lg,
        bottom: MediaQuery.viewInsetsOf(context).bottom + AppSpacing.lg,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .stretch,
          spacing: AppSpacing.md,
          children: [
            Text('Adicionar familiar', style: context.textTheme.titleLarge),
            Text(
              'Depois você poderá compartilhar seus seguros com essa pessoa.',
              style: context.textTheme.bodySmall,
            ),
            TextFormField(
              controller: _name,
              autofocus: true,
              textCapitalization: .words,
              textInputAction: .next,
              validator: Validators.required('Informe o nome'),
              decoration: const InputDecoration(hintText: 'Nome'),
            ),
            DropdownButtonFormField<FamilyRelationship>(
              initialValue: _relationship,
              hint: const Text('Parentesco'),
              borderRadius: BorderRadius.circular(12),
              validator: (value) =>
                  value == null ? 'Escolha o parentesco' : null,
              items: [
                for (final item in FamilyRelationship.values)
                  DropdownMenuItem(value: item, child: Text(item.label)),
              ],
              onChanged: (value) => setState(() => _relationship = value),
            ),
            const SizedBox(height: AppSpacing.xs),
            ElevatedButton(onPressed: _save, child: const Text('Adicionar')),
          ],
        ),
      ),
    );
  }
}
