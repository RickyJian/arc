import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increase() => counter.value++;

  void decrease() => counter.value--;

  void reset() => counter.value = 0;

  var groupTheme = ThemeRatio.light.obs;

  void changeTheme(String theme) {
    if (theme == ThemeRatio.light) {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.dark);
    }
    groupTheme.value = theme;
  }

  var groupLanguage = LanguageRatio.english.obs;

  String changeLanguage(String language) => groupLanguage.value = language;
}
