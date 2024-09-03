import 'package:flutter/material.dart';
import 'package:frontend/src/widgets/shimmers/dont_chart_painter.dart';
import 'package:frontend/src/widgets/shimmers/line_chart_painter.dart';
import 'package:shimmer/shimmer.dart';

class DonutChartShimmer extends StatelessWidget {
  const DonutChartShimmer({required this.size, super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        width: size,
        height: size,
        child: CustomPaint(
          painter: DonutChartPainter(),
        ),
      ),
    );
  }
}
