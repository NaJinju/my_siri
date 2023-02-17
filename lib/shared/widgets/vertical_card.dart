import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({super.key, required this.child, required this.data});
  final Widget child;
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
