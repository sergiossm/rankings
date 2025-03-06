import 'package:flutter/material.dart';

abstract class AppThemeColorScheme extends ColorScheme {
  const AppThemeColorScheme({
    required super.brightness,
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.error,
    required this.onError,
    required this.surface,
    required this.surfaceVariant,
    required this.onSurface,
  }) : super(
          primary: primary,
          onPrimary: onPrimary,
          secondary: secondary,
          onSecondary: onSecondary,
          error: error,
          onError: onError,
          surface: surface,
          onSurface: onSurface,
        );

  static LightColorScheme light = const LightColorScheme();

  static DarkColorScheme dark = const DarkColorScheme();

  @override
  final Color primary;
  @override
  final Color onPrimary;
  @override
  final Color secondary;
  @override
  final Color onSecondary;
  @override
  final Color error;
  @override
  final Color onError;
  @override
  final Color surface;
  @override
  final Color surfaceVariant;
  @override
  final Color onSurface;
}

class LightColorScheme extends AppThemeColorScheme {
  const LightColorScheme()
      : super(
          brightness: Brightness.light,
          primary: const Color(0xFF03DAC6),
          onPrimary: const Color(0xFFFFFFFF),
          secondary: const Color(0xFF212529),
          onSecondary: const Color(0xFFFFFFFF),
          error: const Color(0xFFFF0033),
          onError: const Color(0xFFFFFFFF),
          surface: const Color(0xFFFFFFFF),
          surfaceVariant: const Color(0xFFF5F5F5),
          onSurface: const Color(0xFF000000),
        );
}

class DarkColorScheme extends AppThemeColorScheme {
  const DarkColorScheme()
      : super(
          brightness: Brightness.light,
          primary: const Color(0xFF6200EE),
          onPrimary: const Color(0xFFFFFFFF),
          secondary: const Color(0xFF03DAC6),
          onSecondary: const Color(0xFF000000),
          error: const Color(0xFFFF0033),
          onError: const Color(0xFFFFFFFF),
          surface: const Color(0xFFFFFFFF),
          surfaceVariant: const Color(0xFF000000),
          onSurface: const Color(0xFF000000),
        );
}
