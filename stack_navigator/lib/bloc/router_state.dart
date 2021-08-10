part of 'router_bloc.dart';

abstract class RouterState extends Equatable {
  const RouterState();
}

class RouterInitial extends RouterState {
  @override
  List<Object> get props => [];
}

class SettingPageLoaded extends RouterState {
  final int index;

  SettingPageLoaded({required this.index});

  @override
  List<Object> get props => [index];
}
