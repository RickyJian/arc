part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();
}

class BottomNavigationTapped extends BottomNavigationEvent {
  final int index;

  BottomNavigationTapped(this.index);

  @override
  List<Object?> get props => [index];

  @override
  String toString() => 'bottom navigation tapped: $index';
}
