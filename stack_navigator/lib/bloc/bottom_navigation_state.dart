part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationState extends Equatable {
  const BottomNavigationState();

  get index => -1;
}

class BottomNavigationInitial extends BottomNavigationState {
  @override
  List<Object> get props => [];

  @override
  String toString() => 'initial: $index';
}

class BottomNavigationHomePageLoading extends BottomNavigationState {
  @override
  get index => 0;

  @override
  List<Object> get props => [];

  @override
  String toString() => 'home page loading: $index';
}

class BottomNavigationSettingSizeLoading extends BottomNavigationState {
  @override
  get index => 1;

  @override
  List<Object> get props => [];

  @override
  String toString() => 'setting size page loading: $index';
}
