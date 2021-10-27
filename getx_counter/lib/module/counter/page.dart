import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:getx_counter/module/counter/controller.dart';
import 'package:sizer/sizer.dart';

class CounterPage extends StatelessWidget {
  final CounterController c = Get.put(CounterController());

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _button(
                  icon: Icons.add,
                  onPressed: c.increase,
                ),
                _partition(),
                _button(
                  icon: Icons.remove,
                  onPressed: c.decrease,
                ),
                _partition(),
                _button(
                  icon: Icons.refresh,
                  onPressed: c.reset,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _button({required IconData? icon, required VoidCallback? onPressed}) {
    return SizedBox(
      height: 8.h,
      width: 18.w,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.w),
            ),
          ),
        ),
        child: Icon(icon),
        onPressed: onPressed,
      ),
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
