import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String text;

  SecondPage({@required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Second page text is: $text'),
      ),
    );
  }
}
