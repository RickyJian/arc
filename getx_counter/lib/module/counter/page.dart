import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:getx_counter/module/counter/controller.dart';
import 'package:sizer/sizer.dart';

import 'component.dart';
import 'const.dart';

class CounterPage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first getx project'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: GetX<CounterController>(
                init: CounterController(),
                builder: (info) => Text(
                  '${info.counter.value}',
                  style: TextStyle(
                    fontSize: 150.sp,
                  ),
                ),
              ),
            ),
            _groupWidget(widgets: <Widget>[
              _button(
                context: context,
                icon: Icons.add,
                onPressed: controller.increase,
              ),
              _partition(),
              _button(
                context: context,
                icon: Icons.remove,
                onPressed: controller.decrease,
              ),
              _partition(),
              _button(
                context: context,
                icon: Icons.refresh,
                onPressed: controller.reset,
              ),
            ]),
            GetX<CounterController>(
              init: CounterController(),
              builder: (info) => _ratios(
                name: '$ratioTheme:',
                items: <Ratio>[LightRatio(), DarkRatio()],
                defaultItem: info.groupTheme.value,
                onChanged: (value) => controller.changeTheme(value),
              ),
            ),
            GetX<CounterController>(
              init: CounterController(),
              builder: (info) => _ratios(
                name: '$ratioLanguage:',
                items: <Ratio>[EnglishRatio(), ChineseRatio()],
                defaultItem: info.groupLanguage.value,
                onChanged: (value) => controller.changeLanguage(value),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _button({required BuildContext context, required IconData? icon, required VoidCallback? onPressed}) {
    return SizedBox(
      height: 8.h,
      width: 18.w,
      child: OutlinedButton(
        child: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: onPressed,
      ),
    );
  }

  Widget _radio({required Ratio ratio, required String groupValue, required ValueChanged onChanged}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio(
          value: ratio.toString(),
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(ratio.toString()),
      ],
    );
  }

  Widget _ratios(
      {required String name,
      required List<Ratio> items,
      required String defaultItem,
      required ValueChanged onChanged}) {
    return _groupWidget(
      widgets: List.from([name, ...items]).map((value) {
        if (value is String) {
          return Text(value);
        } else if (value is Ratio) {
          return _radio(ratio: value, groupValue: defaultItem, onChanged: onChanged);
        }
        return Container();
      }).toList(),
    );
  }

  Widget _groupWidget({required List<Widget> widgets}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgets,
    );
  }

  Widget _partition() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 0.h,
        horizontal: 2.w,
      ),
    );
  }
}
