import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistence_navigator/modules/modules.dart';

const List<int> _materialIndices = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];

class ListPage extends StatelessWidget {
  final BottomItem item;

  const ListPage({required this.item});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: _materialIndices.length,
        itemBuilder: (context, index) {
          var bodyHeight = MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight!;
          var colorBarHeight = bodyHeight / _materialIndices.length;
          var idx = _materialIndices[index];
          return Container(
            height: colorBarHeight,
            color: item.color[idx],
            child: Center(
              child: ListTile(
                title: Text(
                  '$idx',
                  style: const TextStyle(fontSize: 24.0),
                ),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => Get.toNamed(ColorRouter.detail.path, id: item.id, arguments: idx),
              ),
            ),
          );
        },
      );
}
