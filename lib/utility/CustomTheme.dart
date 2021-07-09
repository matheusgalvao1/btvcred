import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Style.dart';

// ignore: avoid_classes_with_only_static_members
class CustomTheme {
  // DARK
  static ThemeData dark = ThemeData(
    accentColor: Colored.black,
    appBarTheme: const AppBarTheme(
      brightness: Brightness.dark,
      color: Colored.black,
      iconTheme: IconThemeData(
        color: Colored.grayDark,
      ),
    ),
    // bottomSheetTheme: BottomSheetThemeData(
    //   backgroundColor: Colors.black.withOpacity(0),
    // ),
    brightness: Brightness.dark,
    buttonColor: Colored.greenLight,
    colorScheme: _ColorScheme.dark,
    cursorColor: Colored.group01Medium,
    disabledColor: Colored.white,
    indicatorColor: Colored.greenDark,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    primaryColor: Colored.grayLight,
    primaryColorDark: Colored.white,
    primaryColorLight: Colored.white,
    scaffoldBackgroundColor: Colored.group02Dark, // COR DO FUNDO
    splashColor: Colors.transparent,
    textSelectionColor: Colored.backGroundLight.withOpacity(0.2),
    textSelectionHandleColor: Colored.group01Medium,
    textTheme: GoogleFonts.firaCodeTextTheme(
      const TextTheme(
        headline1: Styled.headline1Dark,
        headline2: Styled.headline2Dark,
        headline3: Styled.headline3Dark,
        headline4: Styled.headline4Dark,
        headline5: Styled.headline5Dark,
        headline6: Styled.headline6Dark,
        subtitle1: Styled.subtitle1Dark,
        subtitle2: Styled.subtitle2Dark,
        bodyText1: Styled.bodyText1Dark,
        bodyText2: Styled.bodyText2Dark,
        button: Styled.buttonDark,
        caption: Styled.captionDark,
      ),
    ),
  );

  // LIGHT
  static ThemeData light = ThemeData(
    accentColor: Colored.white,
    appBarTheme: const AppBarTheme(
      brightness: Brightness.light,
      color: Colored.black,
      iconTheme: IconThemeData(
        color: Colored.grayDark,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.black.withOpacity(0),
    ),
    brightness: Brightness.light,
    buttonColor: Colored.greenDark,
    colorScheme: _ColorScheme.light,
    cursorColor: Colored.group01Medium,
    disabledColor: Colored.black,
    indicatorColor: Colored.greenLight,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    primaryColor: Colored.grayMedium,
    primaryColorDark: Colored.grayDark,
    primaryColorLight: Colored.grayLight,
    scaffoldBackgroundColor: Colored.backGroundLight,
    splashColor: Colors.transparent,
    textSelectionColor: Colored.backGroundLight,
    textSelectionHandleColor: Colored.group01Medium,
    textTheme: GoogleFonts.firaCodeTextTheme(
      const TextTheme(
        headline1: Styled.headline1Light,
        headline2: Styled.headline2Light,
        headline3: Styled.headline3Light,
        headline4: Styled.headline4Light,
        headline5: Styled.headline5Light,
        headline6: Styled.headline6Light,
        subtitle1: Styled.subtitle1Light,
        subtitle2: Styled.subtitle2Light,
        bodyText1: Styled.bodyText1Light,
        bodyText2: Styled.bodyText2Light,
        button: Styled.buttonLight,
        caption: Styled.captionLight,
      ),
    ),
  );
}

// ignore: avoid_classes_with_only_static_members
class _ColorScheme {
  static ColorScheme get dark => _colorScheme(Brightness.dark);
  static ColorScheme get light => _colorScheme(Brightness.light);

  static ColorScheme _colorScheme(Brightness brightness) => ColorScheme(
        brightness: brightness,
        // GROUP01
        primary: Colored.group01Light,
        primaryVariant: Colored.group01Medium,
        onPrimary: Colored.group01Dark,
        // GROUP02
        secondary: Colored.group02Light,
        secondaryVariant: Colored.group02Medium,
        onSecondary: Colored.group02Dark,
        // GROUP03
        background: Colored.group03Light,
        error: Colored.group03Medium,
        onBackground: Colored.group03Dark,
        // GROUP04
        onError: Colored.group04Light,
        onSurface: Colored.group04Medium,
        surface: Colored.group04Dark,
      );
}
