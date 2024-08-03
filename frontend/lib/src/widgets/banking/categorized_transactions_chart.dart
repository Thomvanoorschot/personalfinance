import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/src/providers/categorized_transactions.dart';
import 'dart:math' as math;

import 'package:haptic_feedback/haptic_feedback.dart';

class CategorizedTransactionsChart extends ConsumerWidget {
  const CategorizedTransactionsChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

    final categorizedTransactions = ref.watch(categorizedTransactionsProvider);
    final categorizedTransactionsNotifier = ref.watch(categorizedTransactionsProvider.notifier);
    return categorizedTransactions.when(
      error: (err, stack) => Text(err.toString()),
      // todo Shimmer
      loading: () => const CircularProgressIndicator(),
      data: (resp) {
        final pieChartData = resp.categorizedTransactions.results.map((x) {
          final isTouched = resp.selectedTransactionCategoryGroupSlug == x.slug;
          final fontSize = isTouched ? 20.0 : 16.0;
          final radius = isTouched ? 110.0 : 100.0;
          final widgetSize = isTouched ? 55.0 : 40.0;

          return PieChartSectionData(
            color: Color(categorizedTransactionsNotifier.categoryGroupColorMap[x.slug]!),
            value: x.percentage,
            title: '${x.percentage.round()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgeWidget: _Badge(
              "assets/${x.slug}/${x.slug}.svg",
              size: widgetSize,
            ),
            titlePositionPercentageOffset: 0.7,
            badgePositionPercentageOffset: 1.2,
          );
        }).toList();
        return PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent event, pieTouchResponse) {
                if ((event is FlTapUpEvent ||
                        event is FlLongPressStart ||
                        event is FlLongPressMoveUpdate ||
                        event is FlPanUpdateEvent) &&
                    pieTouchResponse != null &&
                    pieTouchResponse.touchedSection != null) {
                  final newlySelectedSlug = resp.categorizedTransactions.results[pieTouchResponse.touchedSection!.touchedSectionIndex].slug;
                  final currentlySelectedSlug = resp.selectedTransactionCategoryGroupSlug;
                  if (newlySelectedSlug == currentlySelectedSlug && event is FlTapUpEvent) {
                    Haptics.vibrate(HapticsType.selection);
                    categorizedTransactionsNotifier.selectCategoryGroup(null);
                    return;
                  }
                  if (newlySelectedSlug != currentlySelectedSlug) {
                    Haptics.vibrate(HapticsType.selection);
                    categorizedTransactionsNotifier.selectCategoryGroup(newlySelectedSlug);
                  }
                }
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 0,
            sections: pieChartData,
          ),
        );
      },
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge(
    this.svgAsset, {
    required this.size,
  });

  final String svgAsset;
  final double size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      child: SvgPicture.asset(
        svgAsset,
      ),
    );
  }
}
