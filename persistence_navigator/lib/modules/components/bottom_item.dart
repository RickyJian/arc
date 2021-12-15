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
