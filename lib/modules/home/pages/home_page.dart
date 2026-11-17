import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    hide SelectContext, ReadContext, WatchContext;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:tokio_seguros/app/enums/insurance_type.dart';
import 'package:tokio_seguros/app/router/routes.dart';
import 'package:tokio_seguros/app/theme/app_spacing.dart';
import 'package:tokio_seguros/app/widgets/message_card.dart';
import 'package:tokio_seguros/core/responsive/breakpoints.dart';
import 'package:tokio_seguros/core/utils/message_error_listen_utils.dart';
import 'package:tokio_seguros/domain/models/family_member_model.dart';
import 'package:tokio_seguros/modules/home/bloc/home_bloc.dart';
import 'package:tokio_seguros/modules/home/widgets/add_family_member_sheet.dart';
import 'package:tokio_seguros/modules/home/widgets/contracted_section.dart';
import 'package:tokio_seguros/modules/home/widgets/family_section.dart';
import 'package:tokio_seguros/modules/home/widgets/quote_section.dart';
import 'package:tokio_seguros/modules/home/widgets/welcome_banner.dart';
import 'package:tokio_seguros/modules/session/bloc/session_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
    super.initState();
  }

  void _load() {
    final user = context.read<SessionBloc>().state.user;
    if (user == null) return;
    context.read<HomeBloc>().add(HomeStarted(userId: user.id));
  }

  void _onQuote(InsuranceType type) {
    if (type == .auto) {
      context.pushNamed('${Routes.mainShell}${Routes.autoQuote}');
      return;
    }
    MessageErrorListenUtils.snackBar(
      context,
      message: 'A cotação de ${type.label} estará disponível em breve.',
    );
  }

  Future<void> _addMember() async {
    final member = await showAddFamilyMemberSheet(context);
    if (member == null || !mounted) return;
    context.read<HomeBloc>().add(
      HomeFamilyMemberAdded(
        name: member.name,
        relationship: member.relationship,
      ),
    );
  }

  Future<void> _removeMember(FamilyMemberModel member) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remover familiar?'),
        content: Text('${member.name} sairá da sua lista de familiares.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Remover'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    context.read<HomeBloc>().add(HomeFamilyMemberRemoved(memberId: member.id));
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<SessionBloc>().state.user;
    final padding = context.pagePadding;

    return BlocConsumer<HomeBloc, HomeState>(
      bloc: context.read<HomeBloc>(),
      listenWhen: (previous, current) =>
          previous.familyStatus != current.familyStatus,
      listener: (context, state) {
        switch (state.familyStatus) {
          case .added:
            MessageErrorListenUtils.snackBar(
              context,
              message: '${state.family.last.name} foi adicionado(a).',
            );
          case .failure:
            MessageErrorListenUtils.snackBar(context, error: state.failure);
          case .initial || .saving || .removed:
            break;
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () async => _load(),
          child: ListView(
            padding: const EdgeInsets.only(bottom: AppSpacing.xl),
            children: [
              WelcomeBanner(
                name: user?.name ?? '',
                photoUrl: user?.photoUrl,
              ),
              const SizedBox(height: AppSpacing.lg),
              _Centered(
                child: QuoteSection(
                  horizontalPadding: padding,
                  onSelected: _onQuote,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              _Centered(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: padding),
                  child: _buildSections(state),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSections(HomeState state) {
    return switch (state.status) {
      .initial || .loading => const Padding(
        padding: EdgeInsets.all(AppSpacing.xl),
        child: Center(child: CircularProgressIndicator()),
      ),
      .failure => MessageCard(
        icon: LucideIcons.refreshCw,
        message:
            '${state.failure?.message ?? 'Não foi possível carregar.'}\n'
            'Toque para tentar novamente.',
        onTap: _load,
      ),
      .success => Column(
        crossAxisAlignment: .stretch,
        children: [
          FamilySection(
            members: state.family,
            onAdd: _addMember,
            onRemove: _removeMember,
          ),
          const SizedBox(height: AppSpacing.lg),
          ContractedSection(policies: state.policies),
        ],
      ),
    };
  }
}

/// Limita a largura do conteúdo em monitores muito largos.
class _Centered extends StatelessWidget {
  const _Centered({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: .topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: Breakpoints.maxContent),
        child: child,
      ),
    );
  }
}
