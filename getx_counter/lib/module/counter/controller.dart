import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/i18n/i18n.dart';

import 'component.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increase() => counter.value++;

  void decrease() => counter.value--;

  void reset() => counter.value = 0;

  var groupTheme = ThemeRatio.light.obs;

  void changeTheme(String theme) {
    Get.changeThemeMode(theme == ThemeRatio.dark ? ThemeMode.dark : ThemeMode.light);
    groupTheme.value = theme;
  }

  var groupLanguage = LanguageRatio.english.obs;

  void changeLanguage(String language) {
    Get.updateLocale(language == Message.chinese ? Message.chineseLocale : Message.englishLocale);
    groupLanguage.value = language;
  }
}
