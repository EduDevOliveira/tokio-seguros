import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/enums/main_menu.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/modules/section/pages/section_page.dart';

final sectionModule = createModule(
  path: Routes.section,
  register: (c) {
    c.route(
      '/:slug',
      child: (context, state) =>
          SectionPage(menu: MainMenu.fromSlug(state['slug'])),
    );
  },
);
