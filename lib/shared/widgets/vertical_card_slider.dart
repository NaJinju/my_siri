import 'package:flutter/material.dart';

class VerticalCardSlider extends StatelessWidget {
  const VerticalCardSlider(
      {super.key, required this.data, required this.child});
  final int itemCount = 0;
  final List<Map<String, dynamic>> data;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = data[index];
        return const Text('hello');
      },
    );
  }
}
