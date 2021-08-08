// Home page const and enum
const currentTime = 'Current Time:';
const dateTimeFormat = 'yyyy-MM-dd hh:mm:ss';

// Setting common const and enum
enum SettingButton { large, medium, small }

extension ParseToString on SettingButton {
  String string(){
    switch (this) {
      case SettingButton.large:
        return "Large";
      case SettingButton.medium:
        return "Medium";
      case SettingButton.small:
        return "Small";
    }
  }
}
