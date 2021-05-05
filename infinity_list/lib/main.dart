import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:infinity_list/simple_bloc_observer.dart';
import 'package:infinity_list/view/post_page.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'infinity list',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostPage(),
    );
  }
}
