import 'package:tokio_seguros/data/services/family/family_service.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';

class FamilyRepository {
  new(this._service);

  final FamilyService _service;

  Future<List<FamilyMemberModel>> list(String userId) => _service.list(userId);

  Future<List<FamilyMemberModel>> add(
    String userId,
    FamilyMemberModel member,
  ) async {
    final members = [...await _service.list(userId), member];
    await _service.saveAll(userId, members);
    return members;
  }

  Future<List<FamilyMemberModel>> remove(String userId, String memberId) async {
    final members = (await _service.list(userId))
        .where((m) => m.id != memberId)
        .toList();
    await _service.saveAll(userId, members);
    return members;
  }
}
