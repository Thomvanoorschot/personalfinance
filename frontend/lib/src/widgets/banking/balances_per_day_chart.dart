import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/providers/balances_per_day.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

class BalancesPerDayChart extends ConsumerWidget {
  const BalancesPerDayChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final balancesPerDay = ref.watch(balancesPerDayProvider);
    return balancesPerDay.when(
      error: (err, stack) => Text(err.toString()),
      // todo Shimmer
      loading: () => const CircularProgressIndicator(),
      data: (resp) {
        final flSpots = resp.balancesPerDay.balances.map((x) {
          return FlSpot(x.date.seconds.toDouble(), x.balance.roundToDouble());
        }).toList(growable: true);
        if(resp.balancesPerDay.balances.length == 1) {
          flSpots.add(FlSpot(resp.balancesPerDay.balances[0].date.seconds.toDouble() + 86400, resp.balancesPerDay.balances[0].balance.roundToDouble()));
        }
        return LineChart(
          LineChartData(
            minY: 0,
            lineTouchData: LineTouchData(touchCallback: (event, response) {
              if (event is FlPanUpdateEvent) {
                if (response != null && response.lineBarSpots != null) {
                  Haptics.vibrate(HapticsType.selection);
                }
              }
            }),
            borderData: FlBorderData(
              show: false,
            ),
            // backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1000,
                  reservedSize: MediaQuery.sizeOf(context).width * 0.1,
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),
              bottomTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            gridData: const FlGridData(
              show: true,
              drawVerticalLine: false,
              horizontalInterval: 1000
            ),
            lineBarsData: [
              LineChartBarData(
                color: Colors.blue,
                spots: flSpots,
                barWidth: 3,
                belowBarData: BarAreaData(
                  show: false,
                ),
                // isStepLineChart: true,
                isCurved: true,
                preventCurveOverShooting: true,
                preventCurveOvershootingThreshold: 0.6,
                dotData: const FlDotData(show: false),
              ),
            ],
          ),
          duration: const Duration(
            milliseconds: 200,
          ),
          curve: Curves.linear,
        );
      },
    );
  }
}
