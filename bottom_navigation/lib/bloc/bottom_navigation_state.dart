part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationState {}

class BottomNavigationInitial extends BottomNavigationState {}

class CurrentIndexChanged extends BottomNavigationState {
  final int currentIndex;

  CurrentIndexChanged({@required this.currentIndex}) : super();

  @override
  String toString() => 'CurrentIndexChanged to $currentIndex';
}

class PageLoading extends BottomNavigationState {
  @override
  String toString() => 'PageLoading';
}

class FirstPageLoaded extends BottomNavigationState {
  final String text;

  FirstPageLoaded({@required this.text}) : super();

  @override
  String toString() => 'FirstPageLoaded with text: $text';
}

class SecondPageLoaded extends BottomNavigationState {
  final String text;

  SecondPageLoaded({@required this.text}) : super();

  @override
  String toString() => 'SecondPageLoaded with text: $text';
}

class ThirdPageLoaded extends BottomNavigationState {
  final String text;

  ThirdPageLoaded({@required this.text}) : super();

  @override
  String toString() => 'ThirdPageLoaded with text: $text';
}
