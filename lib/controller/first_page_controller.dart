import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/view/second_page/second_page.dart';

class FirstPageController extends GetxController {
//--------------------------------------------variables

  RxList<Color> containerColors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.cyan,
    Colors.brown
  ].obs;

//--------------------------------------------container ontap function

  Future<void> containerOnTap({
    required int index,
    required List<Color> secondList,
  }) async {
    if (containerColors[index] != secondList[index]) {
      Get.to(
        () => SecondPage(index: index),
        transition: Transition.rightToLeft,
      );
      await Future.delayed(const Duration(milliseconds: 200));
      secondList[index] = containerColors[index];
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
