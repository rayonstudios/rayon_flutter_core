import 'package:flutter/material.dart';

extension CustomTextThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  TextStyle get displayLarge => textTheme.displayLarge!;
  TextStyle get displayMedium => textTheme.displayMedium!;
  TextStyle get displaySmall => textTheme.displaySmall!;

  TextStyle get headlineLarge => textTheme.headlineLarge!;
  TextStyle get headlineMedium => textTheme.headlineMedium!;
  TextStyle get headlineSmall => textTheme.headlineSmall!;

  TextStyle get titleLarge => textTheme.titleLarge!;
  TextStyle get titleMedium => textTheme.titleMedium!;
  TextStyle get titleSmall => textTheme.titleSmall!;

  TextStyle get bodyLarge => textTheme.bodyLarge!;
  TextStyle get bodyMedium => textTheme.bodyMedium!;
  TextStyle get bodySmall => textTheme.bodySmall!;

  TextStyle get labelLarge => textTheme.labelLarge!;
  TextStyle get labelMedium => textTheme.labelMedium!;
  TextStyle get labelSmall => textTheme.labelSmall!;
}

extension TextStyleWeight on TextStyle {
  TextStyle get black => copyWith(fontWeight: FontWeight.w900);

  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get light => copyWith(fontWeight: FontWeight.w300);

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
}

extension TextStyleColor on TextStyle {
  TextStyle withColor(Color? color) => copyWith(color: color);

  TextStyle primary(BuildContext context) => withColor(context.primary);
  TextStyle onPrimary(BuildContext context) => withColor(context.onPrimary);
  TextStyle primaryContainer(BuildContext context) =>
      withColor(context.primaryContainer);
  TextStyle onPrimaryContainer(BuildContext context) =>
      withColor(context.onPrimaryContainer);

  TextStyle secondary(BuildContext context) => withColor(context.secondary);
  TextStyle onSecondary(BuildContext context) => withColor(context.onSecondary);
  TextStyle secondaryContainer(BuildContext context) =>
      withColor(context.secondaryContainer);
  TextStyle onSecondaryContainer(BuildContext context) =>
      withColor(context.onSecondaryContainer);

  TextStyle tertiary(BuildContext context) => withColor(context.tertiary);
  TextStyle onTertiary(BuildContext context) => withColor(context.onTertiary);
  TextStyle tertiaryContainer(BuildContext context) =>
      withColor(context.tertiaryContainer);
  TextStyle onTertiaryContainer(BuildContext context) =>
      withColor(context.onTertiaryContainer);

  TextStyle error(BuildContext context) => withColor(context.error);
  TextStyle onError(BuildContext context) => withColor(context.onError);
  TextStyle errorContainer(BuildContext context) =>
      withColor(context.errorContainer);
  TextStyle onErrorContainer(BuildContext context) =>
      withColor(context.onErrorContainer);

  TextStyle background(BuildContext context) => withColor(context.background);
  TextStyle onBackground(BuildContext context) =>
      withColor(context.onBackground);

  TextStyle surface(BuildContext context) => withColor(context.surface);
  TextStyle onSurface(BuildContext context) => withColor(context.onSurface);
  TextStyle surfaceVariant(BuildContext context) =>
      withColor(context.surfaceVariant);
  TextStyle onSurfaceVariant(BuildContext context) =>
      withColor(context.onSurfaceVariant);

  TextStyle outline(BuildContext context) => withColor(context.outline);
  TextStyle outlineVariant(BuildContext context) =>
      withColor(context.outlineVariant);

  TextStyle shadow(BuildContext context) => withColor(context.shadow);
  TextStyle scrim(BuildContext context) => withColor(context.scrim);
  TextStyle inverseSurface(BuildContext context) =>
      withColor(context.inverseSurface);
  TextStyle onInverseSurface(BuildContext context) =>
      withColor(context.onInverseSurface);
  TextStyle inversePrimary(BuildContext context) =>
      withColor(context.inversePrimary);
  TextStyle surfaceTint(BuildContext context) => withColor(context.surfaceTint);
}

extension ColorSchemeContext on BuildContext {
  ColorScheme get colorScheme => theme.colorScheme;

  Color get primary => colorScheme.primary;
  Color get onPrimary => colorScheme.onPrimary;
  Color get primaryContainer => colorScheme.primaryContainer;
  Color get onPrimaryContainer => colorScheme.onPrimaryContainer;

  Color get secondary => colorScheme.secondary;
  Color get onSecondary => colorScheme.onSecondary;
  Color get secondaryContainer => colorScheme.secondaryContainer;
  Color get onSecondaryContainer => colorScheme.onSecondaryContainer;

  Color get tertiary => colorScheme.tertiary;
  Color get onTertiary => colorScheme.onTertiary;
  Color get tertiaryContainer => colorScheme.tertiaryContainer;
  Color get onTertiaryContainer => colorScheme.onTertiaryContainer;

  Color get error => colorScheme.error;
  Color get onError => colorScheme.onError;
  Color get errorContainer => colorScheme.errorContainer;
  Color get onErrorContainer => colorScheme.onErrorContainer;

  Color get background => colorScheme.background;
  Color get onBackground => colorScheme.onBackground;

  Color get surface => colorScheme.surface;
  Color get onSurface => colorScheme.onSurface;
  Color get surfaceVariant => colorScheme.surfaceVariant;
  Color get onSurfaceVariant => colorScheme.onSurfaceVariant;

  Color get outline => colorScheme.outline;
  Color get outlineVariant => colorScheme.outlineVariant;

  Color get shadow => colorScheme.shadow;
  Color get scrim => colorScheme.scrim;
  Color get inverseSurface => colorScheme.inverseSurface;
  Color get onInverseSurface => colorScheme.onInverseSurface;
  Color get inversePrimary => colorScheme.inversePrimary;
  Color get surfaceTint => colorScheme.surfaceTint;
}
