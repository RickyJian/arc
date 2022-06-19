import 'package:flutter/material.dart';
import 'package:focus_node/controller.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Focus Node Example',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final TextController _textController = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Focus Node Example'),
      ),
      body: GetX<TextController>(
        init: _textController,
        builder: (controller) {
          // this field let getx will not error
          controller.temp.value;
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: Get.width / 10 * 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: TextField(
                    controller: controller.textEditorController1,
                    onSubmitted: (value) => controller.onSubmit(value),
                    autofocus: true,
                    focusNode: controller.node1,
                    decoration: const InputDecoration(
                      labelText: 'Node 1',
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: TextField(
                    controller: controller.textEditorController2,
                    focusNode: controller.node2,
                    onSubmitted: (value) => controller.onSubmit(value),
                    decoration: const InputDecoration(
                      labelText: 'Node 2',
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: TextField(
                    controller: controller.textEditorController3,
                    onSubmitted: (value) => controller.onSubmit(value),
                    focusNode: controller.node3,
                    decoration: const InputDecoration(
                      labelText: 'Node 3',
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: TextField(
                    controller: controller.textEditorController4,
                    onSubmitted: (value) => controller.onSubmit(value),
                    focusNode: controller.node4,
                    decoration: const InputDecoration(
                      labelText: 'Node 4',
                      labelStyle: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    child: const Text('Reset'),
                    onPressed: () => controller.reset(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
