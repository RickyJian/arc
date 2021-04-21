import 'package:bottom_navigation/AppScreen.dart';
import 'package:bottom_navigation/bloc/bottom_navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBarBloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<BottomNavigationBloc>(
        create: (BuildContext context) => BottomNavigationBloc(),
        child: AppScreen(),
      ),
    );
  }
}

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
  }
}
