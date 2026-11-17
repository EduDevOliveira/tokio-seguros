import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tokio_seguros/app/errors/app/app_failure.dart';
import 'package:tokio_seguros/data/services/family/family_service.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';

/// Membros da família guardados no aparelho, separados por usuário.
class FamilyServiceImpl implements FamilyService {
  final _prefs = SharedPreferencesAsync();

  String _key(String userId) => 'family.$userId';

  @override
  Future<List<FamilyMemberModel>> list(String userId) async {
    try {
      final raw = await _prefs.getString(_key(userId));
      if (raw == null) return const [];

      final json = jsonDecode(raw) as List<dynamic>;
      return json
          .map((e) => FamilyMemberModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } on FormatException {
      // Dado corrompido: melhor começar vazio do que travar a Home.
      await _prefs.remove(_key(userId));
      return const [];
    } catch (_) {
      throw const AppFailure.storage(
        message: 'Não foi possível carregar sua família.',
      );
    }
  }

  @override
  Future<void> saveAll(String userId, List<FamilyMemberModel> members) async {
    try {
      final raw = jsonEncode(members.map((e) => e.toJson()).toList());
      await _prefs.setString(_key(userId), raw);
    } catch (_) {
      throw const AppFailure.storage();
    }
  }
}
