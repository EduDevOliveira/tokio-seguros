import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/core/auth/app_auth.dart';
import 'package:tokio_seguros/data/repositories/family/family_repository.dart';
import 'package:tokio_seguros/data/repositories/policy/policy_repository.dart';
import 'package:tokio_seguros/data/services/family/family_service.dart';
import 'package:tokio_seguros/data/services/family/family_service_impl.dart';
import 'package:tokio_seguros/data/services/policy/policy_service.dart';
import 'package:tokio_seguros/data/services/policy/policy_service_impl.dart';
import 'package:tokio_seguros/domain/usecases/family/add_family_member.dart';
import 'package:tokio_seguros/domain/usecases/family/get_family_members.dart';
import 'package:tokio_seguros/domain/usecases/family/remove_family_member.dart';
import 'package:tokio_seguros/domain/usecases/policy/get_contracted_policies.dart';
import 'package:tokio_seguros/modules/auto_quote/auto_quote_module.dart';
import 'package:tokio_seguros/modules/home/home_module.dart';
import 'package:tokio_seguros/modules/main_shell/pages/main_shell_page.dart';
import 'package:tokio_seguros/modules/section/section_module.dart';

final mainShellModule = createModule(
  path: Routes.mainShell,
  register: (c) {
    c
      ..addLazySingleton<FamilyService>(FamilyServiceImpl.new)
      ..addLazySingleton<PolicyService>(PolicyServiceImpl.new)
      ..addLazySingleton(FamilyRepository.new)
      ..addLazySingleton(PolicyRepository.new)
      ..addLazySingleton(GetFamilyMembers.new)
      ..addLazySingleton(AddFamilyMember.new)
      ..addLazySingleton(RemoveFamilyMember.new)
      ..addLazySingleton(GetContractedPolicies.new)
      ..route(
        '/',
        // Sem sessão (ex.: F5 na web antes do Firebase restaurar o login):
        // passa pela splash, que restaura e volta para cá.
        guards: [
          (state) => AppAuth.service.currentUser == null ? Routes.splash : null,
        ],
        child: (context, state) => const MainShellPage(),
        children: (sub) {
          sub
            ..module(homeModule, at: '/')
            ..module(autoQuoteModule)
            ..module(sectionModule);
        },
      );
  },
);
