import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_event.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationHomePageLoading());

  @override
  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    if (event is BottomNavigationTapped) {
      switch (event.index) {
        case 0:
          yield BottomNavigationHomePageLoading();
          break;
        case 1:
          yield BottomNavigationSettingSizeLoading();
          break;
      }
    }
  }
}
