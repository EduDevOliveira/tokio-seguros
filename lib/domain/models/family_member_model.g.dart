// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FamilyMemberModel _$FamilyMemberModelFromJson(Map<String, dynamic> json) =>
    _FamilyMemberModel(
      id: json['id'] as String,
      name: json['name'] as String,
      relationship: $enumDecode(
        _$FamilyRelationshipEnumMap,
        json['relationship'],
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$FamilyMemberModelToJson(_FamilyMemberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'relationship': _$FamilyRelationshipEnumMap[instance.relationship]!,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$FamilyRelationshipEnumMap = {
  FamilyRelationship.spouse: 'spouse',
  FamilyRelationship.child: 'child',
  FamilyRelationship.father: 'father',
  FamilyRelationship.mother: 'mother',
  FamilyRelationship.sibling: 'sibling',
  FamilyRelationship.other: 'other',
};
