extension NameExtension on String {
  /// "Caio Máximo Silva" → "Caio Silva".
  String get shortName {
    final parts = trim().split(RegExp(r'\s+'));
    if (parts.length <= 2) return trim();
    return '${parts.first} ${parts.last}';
  }

  /// "Caio Máximo" → "CM". Vazio → "?".
  String get initials {
    final parts = trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty);
    if (parts.isEmpty) return '?';
    if (parts.length == 1) return parts.first[0].toUpperCase();
    return (parts.first[0] + parts.last[0]).toUpperCase();
  }
}
