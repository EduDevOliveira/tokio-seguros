import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/core/constants/app_links.dart';
import 'package:tokio_seguros/modules/auto_quote/pages/auto_quote_page.dart';

final autoQuoteModule = createModule(
  path: Routes.autoQuote,
  register: (c) {
    c.route(
      '/',
      child: (context, state) => const AutoQuotePage(url: AppLinks.autoQuote),
    );
  },
);
