import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/controller/first_page_controller.dart';
import 'package:ui_task/view/first_page/widgets/custom_container.dart';

class FirstPage extends GetView<FirstPageController> {
  FirstPage({super.key});
  final FirstPageController firstPageController =
      Get.put(FirstPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          children:
              List.generate(7, (index) => CustomContainerWidget1(index: index)),
        ),
      ),
    );
  }
}
