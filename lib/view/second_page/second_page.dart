import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/controller/second_page_controller.dart';
import 'package:ui_task/view/second_page/widgets/custom_container.dart';

class SecondPage extends GetView<SecondPagecontroller> {
  SecondPage({
    super.key,
    required this.index,
  });
  final SecondPagecontroller secondPagecontroller =
      Get.put(SecondPagecontroller());
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          children:
              List.generate(7, (index) => CustomContainerWidget2(index: index)),
        ),
      ),
    );
  }
}
