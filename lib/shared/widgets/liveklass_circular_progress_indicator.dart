import 'package:flutter/material.dart';
import 'dart:math' as math;

class LiveklassCircularProgressIndicator extends StatelessWidget {
  final double value;
  final Color backgroundColor;
  final Color foregroundColor;
  final double strokeWidth;

  const LiveklassCircularProgressIndicator({
    super.key,
    required this.value,
    this.backgroundColor = Colors.grey,
    this.foregroundColor = Colors.blue,
    this.strokeWidth = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CircleProgressPainter(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        strokeWidth: strokeWidth,
        percent: value,
      ),
      child: Container(),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  CircleProgressPainter({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.strokeWidth,
    required this.percent,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final double strokeWidth;
  final double percent;

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Paint foregroundPaint = Paint()
      ..shader = const LinearGradient(colors: [
        Color(0XFF9E77ED),
        Color(0XFF9E77ED),
      ]).createShader(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2))
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = math.min(size.width, size.height) / 2 - strokeWidth / 2;
    canvas.drawCircle(center, radius, backgroundPaint);

    double angle = 2 * math.pi * (percent / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      angle,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(CircleProgressPainter oldDelegate) {
    return oldDelegate.percent != percent;
  }
}
