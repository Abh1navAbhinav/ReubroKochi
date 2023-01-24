import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/controller/first_page_controller.dart';
import 'package:ui_task/controller/second_page_controller.dart';

class CustomContainerWidget1 extends StatelessWidget {
  CustomContainerWidget1({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  final SecondPagecontroller secondPagecontroller =
      Get.put(SecondPagecontroller());
  final FirstPageController firstPageController =
      Get.put(FirstPageController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () => firstPageController.containerOnTap(
          index: index,
          secondList: secondPagecontroller.containerColors,
        ),
        child: Obx(
          () => AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: size.height / 3.5,
            width: index == 2 || index == 3 || index == 4
                ? size.width / 3.5
                : size.width / 2.2,
            color: firstPageController.containerColors[index],
          ),
        ),
      ),
    );
  }
}
