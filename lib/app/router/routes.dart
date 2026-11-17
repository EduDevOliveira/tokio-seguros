abstract class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String mainShell = '/main';

  // Filhas do shell (relativas a [mainShell]).
  static const String autoQuote = '/cotacao-auto';
  static const String section = '/secao';

  static String sectionOf(String slug) => '$mainShell$section/$slug';
}
