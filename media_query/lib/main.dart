import 'package:flutter/material.dart';
import 'package:media_query/global_ui_meta.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(context) {
    GlobalUIMeta().context = context;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: GlobalUIMeta().getHeight() / 2,
        width: GlobalUIMeta().getWidth() / 2,
        child: Container(
          color: Colors.amber,
        ),
      ),
    );
  }
}
