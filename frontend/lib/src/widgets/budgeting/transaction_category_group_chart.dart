import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/src/providers/categorized_transactions.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:frontend/src/widgets/shimmers/dont_chart_painter.dart';
import 'package:frontend/src/widgets/shimmers/donut_chart_shimmer.dart';

import 'package:haptic_feedback/haptic_feedback.dart';

class TransactionCategoryGroupChart extends ConsumerWidget {
  const TransactionCategoryGroupChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

    final categorizedTransactions = ref.watch(categorizedTransactionsProvider);
    final categorizedTransactionsNotifier = ref.watch(categorizedTransactionsProvider.notifier);
    return categorizedTransactions.when(
      error: (err, stack) => Text(err.toString()),
      loading: () => DonutChartShimmer(size:  SizeConfig.safeBlockHorizontal * 70),
      data: (resp) {
        final pieChartData = resp.categorizedTransactions.results.map((x) {
          final isTouched = resp.selectedTransactionCategoryGroupSlug == x.slug;
          final fontSize = SizeConfig.safeBlockHorizontal * 5;
          final radius = isTouched ? SizeConfig.safeBlockHorizontal * 20 : SizeConfig.safeBlockHorizontal * 18;
          final widgetSize = SizeConfig.safeBlockHorizontal * 15;

          return PieChartSectionData(
            color: categorizedTransactionsNotifier.categoryGroupColorMap[x.slug]!,
            value: x.percentage,
            title: isTouched ? '${x.percentage.round()}%' : '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
              shadows: shadows,
            ),
            badgeWidget: isTouched
                ? _Badge(
                    x.slug == "unknown_category" ? "assets/${x.slug}.svg" : "assets/${x.slug}/${x.slug}.svg",
                    size: widgetSize,
                  )
                : null,
            titlePositionPercentageOffset: SizeConfig.safeBlockHorizontal * 0.04,
            badgePositionPercentageOffset:SizeConfig.safeBlockHorizontal * 0.20,
          );
        }).toList();
        final selectedPieChartData = resp.selectedTransactionCategoryGroup?.categories.map((x) {
          final fontSize = SizeConfig.safeBlockHorizontal * 4;
          final radius = SizeConfig.safeBlockHorizontal * 25;
          final widgetSize = SizeConfig.safeBlockHorizontal * 10;

          return PieChartSectionData(
            color: categorizedTransactionsNotifier.categoryColorMap[x.slug],
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
              x.slug == "unknown_category" ? "assets/${x.slug}.svg" : "assets/${resp.selectedTransactionCategoryGroup?.slug}/${x.slug}.svg",
              size: widgetSize,
            ),
            titlePositionPercentageOffset: SizeConfig.safeBlockHorizontal * 0.1,
            badgePositionPercentageOffset: SizeConfig.safeBlockHorizontal * 0.20,
          );
        }).toList();
        return Stack(
          alignment: Alignment.center,
          children: [
            PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    if ((event is FlTapUpEvent ||
                            event is FlLongPressStart ||
                            event is FlLongPressMoveUpdate ||
                            event is FlPanUpdateEvent) &&
                        pieTouchResponse != null &&
                        pieTouchResponse.touchedSection != null) {
                      if (pieTouchResponse.touchedSection?.touchedSectionIndex == -1){
                        return;
                      }
                      final newlySelectedCategory =
                          resp.categorizedTransactions.results[pieTouchResponse.touchedSection!.touchedSectionIndex];
                      final newlySelectedSlug = newlySelectedCategory.slug;
                      final currentlySelectedSlug = resp.selectedTransactionCategoryGroupSlug;
                      if (newlySelectedSlug == currentlySelectedSlug && event is FlTapUpEvent) {
                        Haptics.vibrate(HapticsType.selection);
                        categorizedTransactionsNotifier.selectCategoryGroup(null);
                        return;
                      }
                      if (newlySelectedSlug != currentlySelectedSlug) {
                        Haptics.vibrate(HapticsType.selection);
                        categorizedTransactionsNotifier.selectCategoryGroup(newlySelectedCategory);
                      }
                    }
                  },
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: SizeConfig.safeBlockHorizontal * 0.5,
                titleSunbeamLayout: true,
                centerSpaceRadius: SizeConfig.safeBlockHorizontal * 28,
                sections: pieChartData,
              ),
            ),
            if (resp.selectedTransactionCategoryGroupSlug != null)
              IgnorePointer(
                child: PieChart(
                  PieChartData(
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 0,
                    sections: selectedPieChartData,
                  ),
                ),
              ),
          ],
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
    return SvgPicture.asset(
      height: size,
      width: size,
      svgAsset,
    );
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
