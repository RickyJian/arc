import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack_navigator/view/const.dart';

import 'const.dart';

class SettingColumn extends StatelessWidget {
  final SettingButton selected;
  final List<SettingButton> items;
  final ValueChanged<SettingButton> onPressed;

  SettingColumn({required this.selected, required this.items, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((e) {
        Color foregroundColor = Colors.blue;
        Color backgroundColor = Colors.white;
        if (e == selected) {
          foregroundColor = Colors.white;
          backgroundColor = Colors.blue;
        }
        return Column(
          children: <Widget>[
            SizedBox(
              height: buttonSizeHeight,
              width: buttonSizeWidth,
              child: OutlinedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
                  backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
                ),
                onPressed: () => onPressed(e),
                child: Text(e.string()),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: buttonVerticalPadding),
            ),
          ],
        );
      }).toList(),
    );
  }
}
