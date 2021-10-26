import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

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
              child: Text(
                '0',
                style: TextStyle(
                  fontSize: 150.sp,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _button(icon: Icons.add),
                _partition(),
                _button(icon: Icons.remove),
                _partition(),
                _button(icon: Icons.refresh),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _button({required IconData icon}) {
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
        onPressed: () => {},
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
