import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_gradients.dart';
import 'package:tokio_seguros/core/extensions/name_extension.dart';

/// Foto do usuário ou, sem foto, as iniciais sobre o degradê da marca.
class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.name,
    this.photoUrl,
    this.size = 44,
    this.showBadge = false,
  });

  final String name;
  final String? photoUrl;
  final double size;

  /// Bolinha verde no canto (layout do menu lateral).
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    final photo = photoUrl;

    return SizedBox.square(
      dimension: size,
      child: Stack(
        clipBehavior: .none,
        children: [
          Container(
            width: size,
            height: size,
            alignment: .center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: AppGradients.button,
              border: Border.all(color: AppColors.textPrimary, width: 2),
              image: photo == null
                  ? null
                  : DecorationImage(
                      image: NetworkImage(photo),
                      fit: BoxFit.cover,
                    ),
            ),
            child: photo == null
                ? Text(
                    name.initials,
                    style: TextStyle(
                      fontSize: size * 0.36,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  )
                : null,
          ),
          if (showBadge)
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                width: size * 0.32,
                height: size * 0.32,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.appBar, width: 2),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
