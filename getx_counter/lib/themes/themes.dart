import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// Light theme palette: https://www.color-hex.com/color-palette/116112
// Dark theme palette:
class Themes {
  // common
  static const _textSize = 12;
  static const _appBarTextSize = 16;
  static const _buttonBorderRadius = 15;

  // light theme
  static const _lightPrimaryColor = Color.fromRGBO(165, 160, 138, 1);
  static const _lightAppBarColor = Color.fromRGBO(222, 213, 188, 1);
  static const _lightButtonBorderColor = Color.fromRGBO(165, 160, 138, 0.4);

  static final light = ThemeData.light().copyWith(
    primaryColor: _lightPrimaryColor,
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

  static final dark = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
  );
}
