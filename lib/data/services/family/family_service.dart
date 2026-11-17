import 'package:tokio_seguros/domain/models/family_member_model.dart';

/// Lança [AppFailure] em qualquer erro.
abstract interface class FamilyService {
  Future<List<FamilyMemberModel>> list(String userId);

  Future<void> saveAll(String userId, List<FamilyMemberModel> members);
}
