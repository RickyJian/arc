import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_counter/module/module.dart';
import 'package:getx_counter/themes/themes.dart';
import 'package:sizer/sizer.dart';
import 'package:getx_counter/i18n/i18n.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Themes.light,
          darkTheme: Themes.dark,
          themeMode: ThemeMode.system,
          translations: Message(),
          locale: Message.englishLocale,
          fallbackLocale: Message.englishLocale,
          home: CounterPage(),
        );
      },
    ),
  );
}
