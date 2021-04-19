part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationEvent {}

// AppStarted defines event when application started
class AppStarted extends BottomNavigationEvent {
  @override
  String toString() => 'AppStarted';
}

// PageTapped defines event when tapped bottom navigation item
class PageTapped extends BottomNavigationEvent {
  final int index;

  PageTapped({@required this.index}) : super();

  @override
  String toString() => 'PageTapped: $index';
}
