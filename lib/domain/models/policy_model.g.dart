// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PolicyModel _$PolicyModelFromJson(Map<String, dynamic> json) => _PolicyModel(
  id: json['id'] as String,
  type: $enumDecode(_$InsuranceTypeEnumMap, json['type']),
  description: json['description'] as String,
  validUntil: DateTime.parse(json['validUntil'] as String),
);

Map<String, dynamic> _$PolicyModelToJson(_PolicyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$InsuranceTypeEnumMap[instance.type]!,
      'description': instance.description,
      'validUntil': instance.validUntil.toIso8601String(),
    };

const _$InsuranceTypeEnumMap = {
  InsuranceType.auto: 'auto',
  InsuranceType.home: 'home',
  InsuranceType.life: 'life',
  InsuranceType.personalAccidents: 'personal_accidents',
  InsuranceType.motorcycle: 'motorcycle',
  InsuranceType.business: 'business',
};
