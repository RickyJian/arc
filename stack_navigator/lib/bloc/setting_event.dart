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
