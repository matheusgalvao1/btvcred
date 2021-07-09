import 'package:flutter/material.dart';

class Colored {
  static const Color
      // GROUP01 - NULL
      group01Light = Color(0xFFD94100),
      group01Medium = Color(0xFF000000),
      group01Dark = Color(0xFF000000),
      // GROUP02 - BLUE
      group02Light = Color(0xFF21BCFE),
      group02Medium = Color(0xFF00308F),
      group02Dark = Color(0xFF001A4F),
      // GROUP03 - NULL
      group03Light = Color(0xFF000000),
      group03Medium = Color(0xFF000000),
      group03Dark = Color(0xFF000000),
      // GROUP04 - NULL
      group04Light = Color(0xFF000000),
      group04Medium = Color(0xFF000000),
      group04Dark = Color(0xFF000000),
      // GRAY
      grayLight = Color(0xFF000000),
      grayMedium = Color(0xFF000000),
      grayDark = Color(0xFF000000),
      // GREEN
      greenLight = Color(0xFF000000),
      greenDark = Color(0xFF000000),
      // PRIMARY
      black = Color(0xFF000000),
      backGroundLight = Color(0xFFFFFFFF),
      backGroundDark = Color(0xFF000000),
      white = Color(0xFFFFFFFF);
}

class Decorated {
  static const LinearGradient
      //
      group01Gradient = LinearGradient(
        begin: Alignment.topCenter,
        colors: <Color>[
          Colored.group01Medium,
          Colored.group01Dark,
        ],
        end: Alignment.bottomCenter,
      ),
      group02Gradient = LinearGradient(
        begin: Alignment.centerLeft,
        colors: <Color>[
          Colored.group02Light,
          Colored.group02Medium,
        ],
        end: Alignment.centerRight,
      );
}

class Styled {
  static const TextStyle
      // DARK
      subtitle1Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 20,
      ),
      subtitle2Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 18,
      ),
      bodyText1Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 16,
      ),
      bodyText2Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 14,
      ),
      buttonDark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 12,
      ),
      captionDark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 10,
      ),
      headline1Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 20,
      ),
      headline2Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 18,
      ),
      headline3Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 16,
      ),
      headline4Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 14,
      ),
      headline5Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 12,
      ),
      headline6Dark = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 10,
      ),
      // LIGHT
      subtitle1Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 20,
      ),
      subtitle2Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 18,
      ),
      bodyText1Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 16,
      ),
      bodyText2Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 14,
      ),
      buttonLight = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 12,
      ),
      captionLight = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.white,
        fontSize: 10,
      ),
      headline1Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 20,
      ),
      headline2Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 18,
      ),
      headline3Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 16,
      ),
      headline4Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 14,
      ),
      headline5Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 12,
      ),
      headline6Light = TextStyle(
        fontWeight: FontWeight.w400,
        color: Colored.grayDark,
        fontSize: 10,
      );
}
