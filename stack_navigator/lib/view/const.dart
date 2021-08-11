// Home page const and enum

import 'package:flutter/material.dart';

const currentTime = 'Current Time:';
const dateTimeFormat = 'yyyy-MM-dd hh:mm:ss';

// Setting common const and enum
enum SettingButton { large, medium, small, black, red, blue }

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
    }
  }
}

// Setting size const and enum
const double defaultSize = 20.0;

// Setting color const and enum
const Color defaultColor = Colors.black;
