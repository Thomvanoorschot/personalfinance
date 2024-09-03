import 'package:flutter/material.dart';
import 'package:frontend/src/widgets/shimmers/line_chart_painter.dart';
import 'package:shimmer/shimmer.dart';

class LineChartShimmer extends StatelessWidget {
  const LineChartShimmer({required this.height, super.key});

  final double height;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        width: double.infinity,
        height: height,
        child: CustomPaint(
          painter: LineChartPainter(),
        ),
      ),
    );
  }
}