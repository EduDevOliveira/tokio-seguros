import 'package:flutter/material.dart';
import 'package:tokio_seguros/app/theme/app_colors.dart';
import 'package:tokio_seguros/app/theme/app_radius.dart';
import 'package:tokio_seguros/app/theme/app_text_style.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get dark {
    const colorScheme = ColorScheme.dark(
      primary: AppColors.primary,
      onPrimary: Colors.white,
      secondary: AppColors.accentYellow,
      onSecondary: AppColors.background,
      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
      onSurfaceVariant: AppColors.textSecondary,
      surfaceContainerHighest: AppColors.surfaceVariant,
      outline: AppColors.border,
      error: AppColors.error,
      onError: Colors.white,
    );

    final textTheme = AppTextStyles.buildTextTheme(
      AppColors.textPrimary,
      AppColors.textSecondary,
    );

    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.input),
      borderSide: const BorderSide(color: AppColors.textSecondary),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: AppTextStyles.fontFamily,
      textTheme: textTheme,

      // ==========================================================
      // APP BAR
      // ==========================================================
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.appBar,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textPrimary),
        titleTextStyle: textTheme.titleMedium,
      ),

      // ==========================================================
      // INPUTS (pill com borda clara, texto centralizado no layout)
      // ==========================================================
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 14,
        ),
        hintStyle: textTheme.bodyLarge?.copyWith(
          color: AppColors.textSecondary,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        errorMaxLines: 2,
        border: inputBorder,
        enabledBorder: inputBorder.copyWith(
          borderSide: const BorderSide(color: Color(0xFFB9BAC2)),
        ),
        focusedBorder: inputBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
        ),
        errorBorder: inputBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.error),
        ),
        focusedErrorBorder: inputBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.error, width: 1.4),
        ),
      ),

      // ==========================================================
      // BOTÕES
      // ==========================================================
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(48),
          shape: const StadiumBorder(),
          textStyle: textTheme.labelLarge,
          elevation: 0,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          textStyle: textTheme.labelMedium,
        ),
      ),

      // ==========================================================
      // CHECKBOX (redondo, igual ao "Lembrar sempre")
      // ==========================================================
      checkboxTheme: CheckboxThemeData(
        shape: const CircleBorder(),
        side: const BorderSide(color: AppColors.textSecondary, width: 1.5),
        fillColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? AppColors.primary
              : Colors.transparent,
        ),
        checkColor: const WidgetStatePropertyAll(Colors.white),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),

      // ==========================================================
      // DRAWER / SHEETS / SNACKBAR / DIALOG
      // ==========================================================
      drawerTheme: const DrawerThemeData(
        backgroundColor: AppColors.appBar,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(),
        width: 300,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.surface,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
        constraints: BoxConstraints(maxWidth: 560),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppRadius.sheet),
          ),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surface,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: textTheme.titleMedium,
        contentTextStyle: textTheme.bodyLarge,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.surfaceVariant,
        contentTextStyle: textTheme.bodyMedium,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: textTheme.bodyLarge,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.border,
        thickness: 1,
      ),
    );
  }
}
