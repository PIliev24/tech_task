import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  AppColors({
    required this.primary,
    required this.primaryAccent,
    required this.onPrimaryAccent,
    required this.secondary,
    required this.secondaryAccent,
    required this.tertiary,
    required this.tertiaryAccent,
    required this.surface,
    required this.onSurface,
    required this.error,
  });

  factory AppColors.main() => AppColors(
        primary: const Color(0xFFE22E68),
        primaryAccent: const Color(0xFFF2F4F5),
        onPrimaryAccent: const Color(0xFF141414),
        secondary: const Color(0xFF5ab1bd),
        secondaryAccent: const Color(0xFFb3dbe1),
        tertiary: const Color(0xFFefda5d),
        tertiaryAccent: const Color(0xFFf8eeb4),
        surface: const Color(0xFFFFFFFF),
        onSurface: const Color(0xFFC2C9CC),
        error: const Color(0xFFda5a61),
      );

  final Color? primary;
  final Color? primaryAccent;
  final Color? onPrimaryAccent;

  final Color? secondary;
  final Color? secondaryAccent;

  final Color? tertiary;
  final Color? tertiaryAccent;

  final Color? surface;
  final Color? onSurface;

  final Color? error;

  Color? get surfaceHighlightColor => surface?.withOpacity(0.2);

  LinearGradient get gradientBackground =>
      const LinearGradient(colors: [Color(0xFFF1D6F4), Color(0xFFCCE7EB)]);

  @override
  ThemeExtension<AppColors> copyWith({
    Color? primary,
    Color? primaryAccent,
    Color? onPrimaryAccent,
    Color? secondary,
    Color? secondaryAccent,
    Color? tertiary,
    Color? tertiaryAccent,
    Color? surface,
    Color? onSurface,
    Color? notused3,
    Color? notused4,
    Color? error,
  }) =>
      AppColors(
        primary: primary ?? this.primary,
        primaryAccent: primaryAccent ?? this.primaryAccent,
        onPrimaryAccent: onPrimaryAccent ?? this.onPrimaryAccent,
        secondary: secondary ?? this.secondary,
        secondaryAccent: secondaryAccent ?? this.secondaryAccent,
        tertiary: tertiary ?? this.tertiary,
        tertiaryAccent: tertiaryAccent ?? this.tertiaryAccent,
        surface: surface ?? this.surface,
        onSurface: onSurface ?? this.onSurface,
        error: error ?? this.error,
      );

  @override
  ThemeExtension<AppColors> lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      primary: Color.lerp(primary, other.primary, t),
      primaryAccent: Color.lerp(
        primaryAccent,
        other.primaryAccent,
        t,
      ),
      onPrimaryAccent: Color.lerp(onPrimaryAccent, other.onPrimaryAccent, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      secondaryAccent: Color.lerp(secondaryAccent, other.secondaryAccent, t),
      tertiary: Color.lerp(tertiary, other.tertiary, t),
      tertiaryAccent: Color.lerp(tertiaryAccent, other.tertiary, t),
      surface: Color.lerp(surface, other.surface, t),
      onSurface: Color.lerp(onSurface, other.onSurface, t),
      error: Color.lerp(error, other.error, t),
    );
  }
}
