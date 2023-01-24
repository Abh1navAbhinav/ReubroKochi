import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/view/first_page/first_page.dart';

class SecondPagecontroller extends GetxController {
//--------------------------------------------variables

  RxList<Color> containerColors = [
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey
  ].obs;

//--------------------------------------------container ontap function

  Future<void> containerOnTap({
    required int index,
    required List<Color> secondList,
  }) async {
    if (containerColors[index] != secondList[index]) {
      containerColors[index] = secondList[index];
      await Future.delayed(const Duration(milliseconds: 200));
      Get.offAll(
        () => FirstPage(),
        transition: Transition.leftToRight,
      );
    } else {
      Get.snackbar(
        '',
        'Container already selected',
        snackPosition: SnackPosition.BOTTOM,
        barBlur: 0,
        colorText: Colors.white,
        backgroundColor: containerColors[index],
      );
    }
  }
}
