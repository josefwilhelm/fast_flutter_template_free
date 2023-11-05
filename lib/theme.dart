import 'package:fast_flutter_template/utils/style.dart';
import 'package:flutter/material.dart';

const fontFamily = 'Roboto';

const Color errorColor = Color(0xFFDC2626);

//TODO: change primary color here
const primary = Color.fromARGB(255, 178, 42, 103);

ThemeData themeData(Brightness brightness, ColorScheme colorScheme) {
  return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(colorScheme.primary),
      ),
      appBarTheme:
          const AppBarTheme(centerTitle: false, scrolledUnderElevation: 0),
      scaffoldBackgroundColor: colorScheme.background,
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(borderRadius: defaultBoderRadius),
      ),
      iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
        foregroundColor: colorScheme.primary,
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              minimumSize: const Size(0, 0),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ))),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(color: Colors.white, fontSize: 18),
      )),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: colorScheme.onBackground,
          fontWeight: FontWeight.w600,
          fontSize: 28,
          fontFamily: fontFamily,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onBackground,
          fontWeight: FontWeight.w400,
          fontSize: 22,
          fontFamily: fontFamily,
        ),
        titleMedium: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w400,
          color: colorScheme.onBackground,
          fontFamily: fontFamily,
        ),
        bodyLarge: TextStyle(
          color: colorScheme.onBackground,
          fontFamily: fontFamily,
          fontSize: 15,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onBackground,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onBackground,
          fontFamily: fontFamily,
        ),
        //button
        labelLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontFamily: fontFamily,
          // fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        labelMedium: TextStyle(
            color: colorScheme.onBackground,
            fontSize: 14,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w400),
      ));
}

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: primary,
  onPrimary: Color(0xFF331C7D),
  primaryContainer: Color(0xFF4A3695),
  onPrimaryContainer: Color(0xFFE6DEFF),
  secondary: Color(0xFFCAC3DC),
  onSecondary: Color(0xFF322E41),
  secondaryContainer: Color(0xFF484458),
  onSecondaryContainer: Color(0xFFE6DFF9),
  tertiary: Color.fromARGB(255, 163, 135, 195),
  onTertiary: Color(0xFF492534),
  tertiaryContainer: Color.fromARGB(255, 236, 207, 255),
  onTertiaryContainer: Color(0xFFFFD9E5),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color.fromARGB(255, 22, 21, 22),
  onBackground: Color(0xFFE6E1E6),
  surface: Color.fromARGB(255, 22, 21, 22),
  onSurface: Color(0xFFE6E1E6),
  surfaceVariant: Color(0xFF48454E),
  onSurfaceVariant: Color(0xFFC9C4D0),
  outline: Color(0xFF938F99),
  onInverseSurface: Color.fromARGB(255, 22, 21, 22),
  inverseSurface: Color(0xFFE6E1E6),
  inversePrimary: Color(0xFF624FAE),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFCBBEFF),
  outlineVariant: Color(0xFF48454E),
  scrim: Color(0xFF000000),
);

ColorScheme colorScheme(Brightness b) {
  switch (b) {
    case Brightness.light:
      return lightColorScheme;
    case Brightness.dark:
      return darkColorScheme;
  }
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: primary,
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFE6DEFF),
  onPrimaryContainer: Color(0xFF1D0061),
  secondary: Color(0xFF605B71),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE6DFF9),
  onSecondaryContainer: Color(0xFF1C192B),
  tertiary: Color.fromARGB(255, 163, 135, 195),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color.fromARGB(255, 236, 207, 255),
  onTertiaryContainer: Color(0xFF30111F),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF1C1B1E),
  surface: Color(0xFFFFFBFF),
  onSurface: Color(0xFF1C1B1E),
  surfaceVariant: Color(0xFFE6E0EC),
  onSurfaceVariant: Color(0xFF48454E),
  outline: Color(0xFF79757F),
  onInverseSurface: Color(0xFFF4EFF4),
  inverseSurface: Color(0xFF313033),
  inversePrimary: Color(0xFFCBBEFF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF624FAE),
  outlineVariant: Color(0xFFC9C4D0),
  scrim: Color(0xFF000000),
);
