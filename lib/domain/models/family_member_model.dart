import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tokio_seguros/app/enums/family_relationship.dart';

part 'family_member_model.freezed.dart';
part 'family_member_model.g.dart';

@freezed
abstract class FamilyMemberModel with _$FamilyMemberModel {
  const factory FamilyMemberModel({
    required String id,
    required String name,
    required FamilyRelationship relationship,
    required DateTime createdAt,
  }) = _FamilyMemberModel;

  factory FamilyMemberModel.fromJson(Map<String, Object?> json) =>
      _$FamilyMemberModelFromJson(json);
}
