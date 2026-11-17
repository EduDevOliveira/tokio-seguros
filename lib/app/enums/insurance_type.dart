import 'package:json_annotation/json_annotation.dart';

/// Produtos da área "Cotar e Contratar", na ordem em que aparecem.
enum InsuranceType {
  @JsonValue('auto')
  auto('Automóvel'),
  @JsonValue('home')
  home('Residência'),
  @JsonValue('life')
  life('Vida'),
  @JsonValue('personal_accidents')
  personalAccidents('Acidentes Pessoais'),
  @JsonValue('motorcycle')
  motorcycle('Moto'),
  @JsonValue('business')
  business('Empresa');

  const InsuranceType(this.label);

  final String label;
}
