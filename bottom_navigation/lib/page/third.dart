import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String text;

  ThirdPage({@required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Third page text is: $text'),
      ),
    );
  }
}
