import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_event.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial());

  @override
  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    if (event is BottomNavigationTapped) {
      print(event.index);
    }
    if (state is BottomNavigationInitial) {
    } else if (state is BottomNavigationHomePageLoading) {
    } else if (state is BottomNavigationProfileLoading) {}
    yield BottomNavigationNotFoundPageLoading();
  }
}
