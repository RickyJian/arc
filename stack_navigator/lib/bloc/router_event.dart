part of 'router_bloc.dart';

abstract class RouterEvent extends Equatable {
  const RouterEvent();
}

class SettingPageRedirect extends RouterEvent {
  final int index;

  SettingPageRedirect({required this.index});

  @override
  List<Object?> get props => [index];

  @override
  String toString() => 'setting page redirect: $index';
}
