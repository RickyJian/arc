import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  int currentIndex = 0;

  BottomNavigationBloc() : super(BottomNavigationInitial());

  @override
  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    if (event is AppStarted) {
      this.add(PageTapped(index: currentIndex));
    } else if (event is PageTapped) {
      this.currentIndex = event.index;
      yield CurrentIndexChanged(currentIndex: this.currentIndex);
      yield PageLoading();

      if (this.currentIndex == 0) {
        yield FirstPageLoaded(text: "first");
      } else if (this.currentIndex == 1) {
        yield SecondPageLoaded(text: "second");
      } else if (this.currentIndex == 2) {
        yield ThirdPageLoaded(text: "third");
      }
    }
  }
}
