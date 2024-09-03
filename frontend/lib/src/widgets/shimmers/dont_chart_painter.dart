import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DonutChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final thickness = size.width * 0.2; // Thickness of the donut chart

    final paint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.butt;

    // Ensure the rect is square by taking the minimum of width and height
    final rectSize = Size.square(min(size.width, size.height));
    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: rectSize.width,
      height: rectSize.height,
    );

    final startAngle = -90.0; // Starting angle (top of the circle)
    final sweepAngle = 360.0; // Full circle

    // Draw the full circle (donut shape)
    canvas.drawArc(rect, radians(startAngle), radians(sweepAngle), false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  double radians(double degrees) => degrees * (3.14159265359 / 180.0);
}