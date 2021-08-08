part of 'setting_bloc.dart';

abstract class SettingState extends Equatable {
  const SettingState();
}

class SettingInitial extends SettingState {
  @override
  List<Object> get props => [];
}

class SettingSizeClicked extends SettingState {
  final SettingButton selected;

  SettingSizeClicked({required this.selected});

  @override
  List<Object> get props => [selected];
}
