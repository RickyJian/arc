import 'package:getx_counter/i18n/i18n.dart';

abstract class Ratio {
  @override
  String toString();

  String get defaultValue;
}

abstract class ThemeRatio extends Ratio {
  static const String light = Message.lightTheme;
  static const String dark = Message.darkTheme;

  @override
  String get defaultValue => light;
}

class LightRatio extends ThemeRatio {
  @override
  String toString() => ThemeRatio.light;
}

class DarkRatio extends ThemeRatio {
  @override
  String toString() => ThemeRatio.dark;
}

abstract class LanguageRatio extends Ratio {
  static const String english = Message.english;
  static const String chinese = Message.chinese;

  @override
  get defaultValue => english;
}

class EnglishRatio extends LanguageRatio {
  @override
  String toString() => LanguageRatio.english;
}

class ChineseRatio extends LanguageRatio {
  @override
  String toString() => LanguageRatio.chinese;
}
