import 'package:flutter/material.dart';

enum BottomItem { red, green, blue }

extension BottomItemExtension on BottomItem {
  String get name {
    switch (this) {
      case BottomItem.red:
        return 'Red';
      case BottomItem.green:
        return 'Green';
      case BottomItem.blue:
        return 'Blue';
    }
  }

  MaterialColor get color {
    switch (this) {
      case BottomItem.red:
        return Colors.red;
      case BottomItem.green:
        return Colors.green;
      case BottomItem.blue:
        return Colors.blue;
    }
  }

  Icon get icon {
    switch (this) {
      case BottomItem.red:
        return const Icon(Icons.photo);
      case BottomItem.green:
        return const Icon(Icons.photo);
      case BottomItem.blue:
        return const Icon(Icons.photo);
    }
  }
}
