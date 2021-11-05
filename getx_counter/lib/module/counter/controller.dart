import 'package:get/get.dart';

import 'component.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increase() => counter.value++;

  void decrease() => counter.value--;

  void reset() => counter.value = 0;

  var groupTheme = ThemeRatio.light.obs;

  String changeTheme(String theme) => groupTheme.value = theme;

  var groupLanguage = LanguageRatio.english.obs;

  String changeLanguage(String language) => groupLanguage.value = language;
}
