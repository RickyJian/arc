import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final String name;
  final bool isSelected;

  const ListPage({required this.name, this.isSelected = false});

  @override
  Widget build(BuildContext context) => Offstage(
        offstage: !isSelected,
        child: Text(name),
      );
}
