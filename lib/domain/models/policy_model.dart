import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';

part 'policy_model.freezed.dart';
part 'policy_model.g.dart';

/// Seguro contratado (apólice).
@freezed
abstract class PolicyModel with _$PolicyModel {
  const factory PolicyModel({
    required String id,
    required InsuranceType type,
    required String description,
    required DateTime validUntil,
  }) = _PolicyModel;

  factory PolicyModel.fromJson(Map<String, Object?> json) =>
      _$PolicyModelFromJson(json);
}
