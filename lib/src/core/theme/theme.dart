import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff615690),
      surfaceTint: Color(0xff615690),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe6deff),
      onPrimaryContainer: Color(0xff493f77),
      secondary: Color(0xff1e6a4f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa8f2cf),
      onSecondaryContainer: Color(0xff005139),
      tertiary: Color(0xff7c5263),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd9e5),
      onTertiaryContainer: Color(0xff623b4b),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff1c1b20),
      onSurfaceVariant: Color(0xff48454e),
      outline: Color(0xff79757f),
      outlineVariant: Color(0xffc9c4d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffcbbeff),
      primaryFixed: Color(0xffe6deff),
      onPrimaryFixed: Color(0xff1d1148),
      primaryFixedDim: Color(0xffcbbeff),
      onPrimaryFixedVariant: Color(0xff493f77),
      secondaryFixed: Color(0xffa8f2cf),
      onSecondaryFixed: Color(0xff002115),
      secondaryFixedDim: Color(0xff8cd5b4),
      onSecondaryFixedVariant: Color(0xff005139),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff30111f),
      tertiaryFixedDim: Color(0xffedb8cb),
      onTertiaryFixedVariant: Color(0xff623b4b),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffebe6ee),
      surfaceContainerHighest: Color(0xffe6e1e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff382e65),
      surfaceTint: Color(0xff615690),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff7065a0),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003f2b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff307a5d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4f2b3a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8d6072),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff121016),
      onSurfaceVariant: Color(0xff37353e),
      outline: Color(0xff54515a),
      outlineVariant: Color(0xff6f6b75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffcbbeff),
      primaryFixed: Color(0xff7065a0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff574d86),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff307a5d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff0f6146),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8d6072),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff724959),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc9c5cd),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xffebe6ee),
      surfaceContainerHigh: Color(0xffe0dbe3),
      surfaceContainerHighest: Color(0xffd5d0d8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2e235a),
      surfaceTint: Color(0xff615690),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4b4179),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003323),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff00543b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff442130),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff653d4e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2d2b33),
      outlineVariant: Color(0xff4a4851),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f36),
      inversePrimary: Color(0xffcbbeff),
      primaryFixed: Color(0xff4b4179),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff352a61),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff00543b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003b28),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff653d4e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4b2737),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbbb7bf),
      surfaceBright: Color(0xfffdf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4eff7),
      surfaceContainer: Color(0xffe6e1e9),
      surfaceContainerHigh: Color(0xffd7d3db),
      surfaceContainerHighest: Color(0xffc9c5cd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcbbeff),
      surfaceTint: Color(0xffcbbeff),
      onPrimary: Color(0xff32285e),
      primaryContainer: Color(0xff493f77),
      onPrimaryContainer: Color(0xffe6deff),
      secondary: Color(0xff8cd5b4),
      onSecondary: Color(0xff003826),
      secondaryContainer: Color(0xff005139),
      onSecondaryContainer: Color(0xffa8f2cf),
      tertiary: Color(0xffedb8cb),
      onTertiary: Color(0xff492535),
      tertiaryContainer: Color(0xff623b4b),
      onTertiaryContainer: Color(0xffffd9e5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff141318),
      onSurface: Color(0xffe6e1e9),
      onSurfaceVariant: Color(0xffc9c4d0),
      outline: Color(0xff938f99),
      outlineVariant: Color(0xff48454e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff615690),
      primaryFixed: Color(0xffe6deff),
      onPrimaryFixed: Color(0xff1d1148),
      primaryFixedDim: Color(0xffcbbeff),
      onPrimaryFixedVariant: Color(0xff493f77),
      secondaryFixed: Color(0xffa8f2cf),
      onSecondaryFixed: Color(0xff002115),
      secondaryFixedDim: Color(0xff8cd5b4),
      onSecondaryFixedVariant: Color(0xff005139),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff30111f),
      tertiaryFixedDim: Color(0xffedb8cb),
      onTertiaryFixedVariant: Color(0xff623b4b),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffe0d7ff),
      surfaceTint: Color(0xffcbbeff),
      onPrimary: Color(0xff271c53),
      primaryContainer: Color(0xff9488c6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffa2ecc9),
      onSecondary: Color(0xff002c1d),
      secondaryContainer: Color(0xff569e7f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd0e0),
      onTertiary: Color(0xff3c1b2a),
      tertiaryContainer: Color(0xffb38395),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe0dae6),
      outline: Color(0xffb5b0bb),
      outlineVariant: Color(0xff928f99),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff4a4078),
      primaryFixed: Color(0xffe6deff),
      onPrimaryFixed: Color(0xff12043e),
      primaryFixedDim: Color(0xffcbbeff),
      onPrimaryFixedVariant: Color(0xff382e65),
      secondaryFixed: Color(0xffa8f2cf),
      onSecondaryFixed: Color(0xff00150c),
      secondaryFixedDim: Color(0xff8cd5b4),
      onSecondaryFixedVariant: Color(0xff003f2b),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff240615),
      tertiaryFixedDim: Color(0xffedb8cb),
      onTertiaryFixedVariant: Color(0xff4f2b3a),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff46434a),
      surfaceContainerLowest: Color(0xff08070c),
      surfaceContainerLow: Color(0xff1e1d22),
      surfaceContainer: Color(0xff29272d),
      surfaceContainerHigh: Color(0xff333238),
      surfaceContainerHighest: Color(0xff3f3d43),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff4edff),
      surfaceTint: Color(0xffcbbeff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc7bafb),
      onPrimaryContainer: Color(0xff0c0035),
      secondary: Color(0xffb9ffdd),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff88d1b0),
      onSecondaryContainer: Color(0xff000e07),
      tertiary: Color(0xffffebf0),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe9b4c8),
      onTertiaryContainer: Color(0xff1c020f),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff141318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff3eef9),
      outlineVariant: Color(0xffc5c1cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff4a4078),
      primaryFixed: Color(0xffe6deff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffcbbeff),
      onPrimaryFixedVariant: Color(0xff12043e),
      secondaryFixed: Color(0xffa8f2cf),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff8cd5b4),
      onSecondaryFixedVariant: Color(0xff00150c),
      tertiaryFixed: Color(0xffffd9e5),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffedb8cb),
      onTertiaryFixedVariant: Color(0xff240615),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff514f56),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff201f24),
      surfaceContainer: Color(0xff312f36),
      surfaceContainerHigh: Color(0xff3c3a41),
      surfaceContainerHighest: Color(0xff48464c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
