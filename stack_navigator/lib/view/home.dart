import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Current Time',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
          ),
          TimerBuilder.periodic(
            Duration(seconds: 1),
            builder: (context) {
              DateFormat formatter = DateFormat('yyyy-MM-dd hh:mm:ss');
              return Text(
                formatter.format(DateTime.now()),
                style: TextStyle(
                  fontSize: 18.0,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
