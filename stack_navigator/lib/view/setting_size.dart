import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingSizePage extends StatelessWidget {
  static const buttonSizeHeight = 70.0;
  static const buttonSizeWidth = 150.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: buttonSizeHeight,
            width: buttonSizeWidth,
            child: OutlinedButton(
              onPressed: () {
                print('Large');
              },
              child: const Text('Large'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          SizedBox(
            height: buttonSizeHeight,
            width: buttonSizeWidth,
            child: OutlinedButton(
              onPressed: () {
                print('Medium');
              },
              child: const Text('Medium'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          SizedBox(
            height: buttonSizeHeight,
            width: buttonSizeWidth,
            child: OutlinedButton(
              onPressed: () {
                print('Small');
              },
              child: const Text('Small'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          TextButton(
            onPressed: () {
              print('dispatch to color setting');
            },
            child: const Text('color setting >>'),
          ),
        ],
      ),
    );
  }
}
