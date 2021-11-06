import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Message extends Translations {
  static const englishLocale = Locale('en', 'US');
  static const chineseLocale = Locale('zh', 'TW');


  static const projectName = 'PROJECT_NAME';
  static const projectTheme = 'PROJECT_THEME';
  static const lightTheme = 'LIGHT_THEME';
  static const darkTheme = 'DARK_THEME';
  static const projectLanguage = 'PROJECT_LANGUAGE';
  static const english = 'ENGLISH';
  static const chinese = 'CHINESE';

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          projectName: 'My first getx project',
          projectTheme: 'Theme:',
          projectLanguage: "Language:",
          lightTheme: 'light',
          darkTheme: 'dark',
          english: 'english',
          chinese: 'chinese',
        },
        'zh_TW': {
          projectName: '我第一個 GetX 專案',
          projectTheme: '主題：',
          projectLanguage: '語言：',
          lightTheme: '亮色',
          darkTheme: '暗色',
          english: '英文',
          chinese: '中文',
        }
      };
}
