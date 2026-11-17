import 'package:json_annotation/json_annotation.dart';

enum FamilyRelationship {
  @JsonValue('spouse')
  spouse('Cônjuge'),
  @JsonValue('child')
  child('Filho(a)'),
  @JsonValue('father')
  father('Pai'),
  @JsonValue('mother')
  mother('Mãe'),
  @JsonValue('sibling')
  sibling('Irmão(ã)'),
  @JsonValue('other')
  other('Outro');

  const FamilyRelationship(this.label);

  final String label;
}
