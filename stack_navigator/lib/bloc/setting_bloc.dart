import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:stack_navigator/view/view.dart';

part 'setting_event.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingInitial());

  @override
  Stream<SettingState> mapEventToState(
    SettingEvent event,
  ) async* {
    if (event is SettingSizeClick) {
      yield SettingSizeClicked(selected: event.size);
    } else if (event is SettingColorClick) {
      yield SettingColorClicked(selected: event.color);
    }
  }
}
