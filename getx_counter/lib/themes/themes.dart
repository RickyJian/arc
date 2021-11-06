import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// Light theme palette: https://www.color-hex.com/color-palette/116112
// Dark theme palette: https://www.color-hex.com/color-palette/112837
class Themes {
  // common
  static const _textSize = 12;
  static const _appBarTextSize = 16;
  static const _buttonBorderRadius = 15;

  // light theme
  static const _lightPrimaryColor = Color.fromRGBO(165, 160, 138, 1);
  static const _lightBackgroundColor = Colors.white;
  static const _lightAppBarColor = Color.fromRGBO(222, 213, 188, 1);
  static const _lightButtonBorderColor = Color.fromRGBO(165, 160, 138, 0.4);

  static final light = ThemeData.light().copyWith(
    primaryColor: _lightPrimaryColor,
    scaffoldBackgroundColor: _lightBackgroundColor,
    unselectedWidgetColor: _lightPrimaryColor,
    toggleableActiveColor: _lightPrimaryColor,
    appBarTheme: AppBarTheme(
      // color: Color.fromRGBO	(242,240,230, 1),
      titleTextStyle: TextStyle(
        color: _lightPrimaryColor,
        fontSize: _appBarTextSize.sp,
      ),
      color: _lightAppBarColor,
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: _lightPrimaryColor,
        fontSize: _textSize.sp,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          const BorderSide(
            color: _lightButtonBorderColor,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_buttonBorderRadius.w),
          ),
        ),
      ),
    ),
  );

  // dark theme
  static const _darkPrimaryColor = Color.fromRGBO(240, 244, 248, 1);
  static const _darkBackgroundColor = Color.fromRGBO(16, 42, 67, 1);
  static const _darkAppBarColor = Color.fromRGBO(72, 101, 129, 1);
  static const _darkButtonBorderColor = Color.fromRGBO(240, 244, 248, 0.4);

  static final dark = ThemeData.dark().copyWith(
    primaryColor: _darkPrimaryColor,
    scaffoldBackgroundColor: _darkBackgroundColor,
    unselectedWidgetColor: _darkPrimaryColor,
    toggleableActiveColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      // color: Color.fromRGBO	(242,240,230, 1),
      titleTextStyle: TextStyle(
        color: _darkPrimaryColor,
        fontSize: _appBarTextSize.sp,
      ),
      color: _darkAppBarColor,
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: _darkPrimaryColor,
        fontSize: _textSize.sp,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          const BorderSide(
            color: _darkButtonBorderColor,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_buttonBorderRadius.w),
          ),
        ),
      ),
    ),
  );
}
