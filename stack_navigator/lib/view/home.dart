import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Text('HomePage'),
          TimerBuilder.periodic(
            Duration(seconds: 1),
            builder: (context) => Text("${DateTime.now()}"),
          )
        ],
      ),
    );
  }
}
