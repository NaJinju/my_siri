import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class MyScrollController extends StatelessWidget {
  MyScrollController({super.key});
  final _scrollController = ScrollController();
  final _data = RxList<Map<String, dynamic>>([]);

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
