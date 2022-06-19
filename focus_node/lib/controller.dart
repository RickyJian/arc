import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  final TextEditingController textEditorController1 = TextEditingController();
  final FocusNode node1 = FocusNode();
  final TextEditingController textEditorController2 = TextEditingController();
  final FocusNode node2 = FocusNode();
  final TextEditingController textEditorController3 = TextEditingController();
  final FocusNode node3 = FocusNode();
  final TextEditingController textEditorController4 = TextEditingController();
  final FocusNode node4 = FocusNode();

  // this field let getx will not error
  var temp = ''.obs;

  @override
  onInit() {
    // when text field show then move focus to first text field
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(Get.context!).requestFocus(node1);
    });
    super.onInit();
  }

  onSubmit(String value) {
    if (node1.hasFocus) {
      node2.requestFocus();
    } else if (node2.hasFocus) {
      node3.requestFocus();
    } else if (node3.hasFocus) {
      node4.requestFocus();
    } else if (node4.hasFocus) {
      // do submit
    }
  }

  reset() {
    textEditorController1.clear();
    textEditorController2.clear();
    textEditorController3.clear();
    textEditorController4.clear();
    node1.requestFocus();
  }
}
