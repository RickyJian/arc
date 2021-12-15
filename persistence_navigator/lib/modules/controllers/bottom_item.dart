import 'package:get/get.dart';

class BottomItemController extends GetxController {
  var currentIndex = 0.obs;

  onTap(int index) {
    currentIndex = index.obs;
    update();
  }
}
