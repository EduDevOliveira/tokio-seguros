import 'package:tokio_seguros/app/enums/family_relationship.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';
import 'package:tokio_seguros/domain/models/policy_model.dart';
import 'package:tokio_seguros/domain/models/user_model.dart';

/// CPF válido usado nos testes (o mesmo da conta demo).
const validCpf = '529.982.247-25';
const validCpfDigits = '52998224725';

UserModel buildUser({
  String id = 'user-1',
  String name = 'Caio Máximo',
  String cpf = validCpfDigits,
}) => UserModel(id: id, name: name, cpf: cpf);

FamilyMemberModel buildMember({
  String id = 'm1',
  String name = 'Ana Máximo',
  FamilyRelationship relationship = FamilyRelationship.spouse,
}) => FamilyMemberModel(
  id: id,
  name: name,
  relationship: relationship,
  createdAt: DateTime(2026, 11, 16),
);

PolicyModel buildPolicy({String id = 'p1'}) => PolicyModel(
  id: id,
  type: InsuranceType.auto,
  description: 'Onix 2024',
  validUntil: DateTime(2027, 1, 31),
);
