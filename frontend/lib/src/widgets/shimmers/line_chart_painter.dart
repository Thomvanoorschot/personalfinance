import 'package:flutter/material.dart';

class LineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = 4.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width * 0.1, size.height * 0.5);
    path.lineTo(size.width * 0.2, size.height * 0.6);
    path.lineTo(size.width * 0.3, size.height * 0.3);
    path.lineTo(size.width * 0.4, size.height * 0.4);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width * 0.6, size.height * 0.8);
    path.lineTo(size.width * 0.7, size.height * 0.2);
    path.lineTo(size.width * 0.8, size.height * 0.1);
    path.lineTo(size.width * 0.9, size.height * 0.8);
    path.lineTo(size.width, size.height * 0.9);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}