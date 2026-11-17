import 'package:flutter/widgets.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Itens do menu lateral. O [slug] vira a URL da seção (`/main/section/<slug>`).
enum MainMenu {
  home('Home / Seguros', 'home', LucideIcons.shieldCheck),
  contracts('Minhas Contratações', 'contratacoes', LucideIcons.fileText),
  claims('Meus Sinistros', 'sinistros', LucideIcons.triangleAlert),
  family('Minha Família', 'familia', LucideIcons.users),
  assets('Meus Bens', 'bens', LucideIcons.package),
  payments('Pagamentos', 'pagamentos', LucideIcons.creditCard),
  coverages('Coberturas', 'coberturas', LucideIcons.umbrella),
  billet('Validar Boleto', 'validar-boleto', LucideIcons.barcode),
  phones('Telefones Importantes', 'telefones', LucideIcons.phone),
  settings('Configurações', 'configuracoes', LucideIcons.settings);

  const MainMenu(this.label, this.slug, this.icon);

  final String label;
  final String slug;
  final IconData icon;

  static MainMenu? fromSlug(String? slug) {
    for (final item in values) {
      if (item.slug == slug) return item;
    }
    return null;
  }
}
