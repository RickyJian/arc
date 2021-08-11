part of 'setting_bloc.dart';

abstract class SettingEvent extends Equatable {
  const SettingEvent();
}

class SettingSizeClick extends SettingEvent {
  final SettingButton size;

  SettingSizeClick({required this.size});

  @override
  List<Object?> get props => [size];

  @override
  String toString() => 'setting size page button click: ${size.string()}';
}

class SettingColorClick extends SettingEvent {
  final SettingButton color;

  SettingColorClick({required this.color});

  @override
  List<Object?> get props => [color];

  @override
  String toString() => 'setting color page button click: ${color.string()}';
}

class SettingFormatClick extends SettingEvent {
  final SettingButton format;

  SettingFormatClick({required this.format});

  @override
  List<Object?> get props => [format];

  @override
  String toString() => 'setting format page button click: ${format.string()}';
}
