import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final String text;

  FirstPage({@required this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('First page text is: $text'),
      ),
    );
  }

}
