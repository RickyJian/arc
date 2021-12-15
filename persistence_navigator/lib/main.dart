import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/modules.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Persistence Navigator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final BottomItemController _bottomController = Get.put(BottomItemController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persistence Navigator'),
      ),
      body: GetBuilder<BottomItemController>(
        init: _bottomController,
        builder: (item) => Stack(
          children: BottomItem.values
              .map((i) => ListPage(
                    name: i.name,
                    isSelected: i.index == item.currentIndex.value,
                  ))
              .toList(),
        ),
      ),
      bottomNavigationBar: GetBuilder<BottomItemController>(
        init: _bottomController,
        builder: (item) => BottomNavigationBar(
          onTap: (index) => _bottomController.onTap(index),
          currentIndex: item.currentIndex.value,
          items: BottomItem.values
              .map((i) => BottomNavigationBarItem(icon: const Icon(Icons.photo), label: i.name))
              .toList(),
        ),
      ),
    );
  }
}
