import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:my_siri/modules/main/home/tabs/feed/slider_conroller.dart';

class SliderIndicator extends StatelessWidget {
  const SliderIndicator({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final selectedIndex = Get.find<SliderController>().selectedIndex.value;

      return Container(
        width: 6,
        height: 6,
        margin: const EdgeInsets.symmetric(horizontal: 2.5, vertical: 10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedIndex == index
              ? const Color(0XFFAAADB0)
              : const Color(0XFFD4D7DA),
        ),
      );
    });
  }
}
