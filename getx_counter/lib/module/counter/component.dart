abstract class Ratio {
  @override
  String toString();

  String get defaultValue;
}

abstract class ThemeRatio extends Ratio {
  static const String light = 'light';
  static const String dark = 'dark';

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
  static const String english = 'english';
  static const String chinese = 'chinese';

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
