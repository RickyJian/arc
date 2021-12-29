import 'package:flutter/material.dart';

import '../components/components.dart';

class DetailPage extends StatelessWidget {
  final BottomItem item;
  final int index;

  const DetailPage({required this.item, this.index = 0});

  @override
  Widget build(BuildContext context) => Material(
        child: Container(
          color: item.color[index],
          child: Center(
            child: Text(
              '#${item.color[index]!.value.toRadixString(16).toUpperCase()}',
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ),
      );
}
