import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final MaterialColor color;
  final int index;

  const DetailPage({required this.color, required this.index});

  @override
  Widget build(BuildContext context) => Material(
        child: Container(
          color: color[index],
          child: Center(
            child: Text(
              '#${color[index]!.value.toRadixString(16).toUpperCase()}',
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ),
      );
}
