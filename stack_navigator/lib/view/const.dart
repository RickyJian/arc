// Home page const and enum

import 'package:flutter/material.dart';

const currentTime = 'Current Time:';

// Setting common const and enum
enum SettingButton { large, medium, small, black, red, blue, datetime, date, time }

extension ParseToString on SettingButton {
  String string() {
    switch (this) {
      case SettingButton.large:
        return "Large";
      case SettingButton.medium:
        return "Medium";
      case SettingButton.small:
        return "Small";
      case SettingButton.black:
        return "Black";
      case SettingButton.red:
        return "Red";
      case SettingButton.blue:
        return "Blue";
      case SettingButton.datetime:
        return "Datetime";
      case SettingButton.date:
        return "Date";
      case SettingButton.time:
        return "Time";
    }
  }
}

extension ToSize on SettingButton {
  double toSize() {
    switch (this) {
      case SettingButton.large:
        return 40.0;
      case SettingButton.medium:
        return 30.0;
      case SettingButton.small:
        return 20.0;
      case SettingButton.black:
        return defaultSize;
      case SettingButton.red:
        return defaultSize;
      case SettingButton.blue:
        return defaultSize;
      case SettingButton.datetime:
        return defaultSize;
      case SettingButton.date:
        return defaultSize;
      case SettingButton.time:
        return defaultSize;
    }
  }
}

extension ToColor on SettingButton {
  Color toColor() {
    switch (this) {
      case SettingButton.large:
        return defaultColor;
      case SettingButton.medium:
        return defaultColor;
      case SettingButton.small:
        return defaultColor;
      case SettingButton.black:
        return Colors.black;
      case SettingButton.red:
        return Colors.red;
      case SettingButton.blue:
        return Colors.blue;
      case SettingButton.datetime:
        return defaultColor;
      case SettingButton.date:
        return defaultColor;
      case SettingButton.time:
        return defaultColor;
    }
  }
}

extension Format on SettingButton {
  String format() {
    switch (this) {
      case SettingButton.large:
        return defaultFormat;
      case SettingButton.medium:
        return defaultFormat;
      case SettingButton.small:
        return defaultFormat;
      case SettingButton.black:
        return defaultFormat;
      case SettingButton.red:
        return defaultFormat;
      case SettingButton.blue:
        return defaultFormat;
      case SettingButton.datetime:
        return 'yyyy-MM-dd hh:mm:ss';
      case SettingButton.date:
        return 'yyyy-MM-dd';
      case SettingButton.time:
        return 'hh:mm:ss';
    }
  }
}

// Setting size const and enum
const double defaultSize = 20.0;

// Setting color const and enum
const Color defaultColor = Colors.black;

// Setting format const and enum
const String defaultFormat = 'yyyy-MM-dd hh:mm:ss';
