import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/budgeting.pbenum.dart';
import 'package:frontend/src/providers/in_and_outgoing_transaction_amounts_per_period.dart';
import 'package:frontend/src/providers/period.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'dart:math';


class SpendingChart extends ConsumerWidget {
  const SpendingChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inAndOutgoingTransactionAmountsPerPeriod = ref.watch(inAndOutgoingTransactionAmountsPerPeriodProvider);
    final inAndOutgoingTransactionAmountsPerPeriodNotifier = ref.watch(inAndOutgoingTransactionAmountsPerPeriodProvider.notifier);
    return inAndOutgoingTransactionAmountsPerPeriod.when(
      error: (err, stack) => Text(err.toString()),
      // todo Shimmer
      loading: () => const CircularProgressIndicator(),
      data: (resp) {
        var barChartIndex = 0;
        final barChartData = resp.inAndOutgoingTransactionAmountsPerPeriodModel.periods.map((x) {
          final data = BarChartGroupData(
            barsSpace: 4,
            x: barChartIndex,
            barRods: [
              BarChartRodData(
                toY: x.ingoingAmount,
                color: Theme.of(context).colorScheme.primary,
                width: 7,
              ),
              BarChartRodData(
                toY: -x.outgoingAmount,
                color: const Color(0xFFB24C47),
                width: 7,
              ),
            ],
          );
          barChartIndex++;
          return data;
        }).toList();

        final bottomLabels = resp.inAndOutgoingTransactionAmountsPerPeriodModel.periods.map((x) {
          final period = GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.valueOf(ref.read(periodProvider).selectedIndex);
          if(period == GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.month){
            final montAbbreviation = epochToMonthAbbreviation(x.startOfPeriod);
            return montAbbreviation;
          }
          if(period == GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.week){
            final weekNumber = convertTimestampToWeekNumber(x.startOfPeriod);
            return weekNumber;
          }
          if(period == GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.day){
            final dayAbbreviation = epochToDayAbbreviation(x.startOfPeriod);
            return dayAbbreviation;
          }
          return "";
        }).toList();
        final highestPeriod = resp.inAndOutgoingTransactionAmountsPerPeriodModel.periods.reduce((current, next) =>
            max(current.ingoingAmount, -current.outgoingAmount) > max(next.ingoingAmount, -next.outgoingAmount) ? current : next);
        final leftLabels = divideIntoCumulativeParts(max(highestPeriod.ingoingAmount, -highestPeriod.outgoingAmount));

        return GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity != null) {
              if (details.primaryVelocity! > 0) {
                inAndOutgoingTransactionAmountsPerPeriodNotifier.updateData(true);
              } else {
                inAndOutgoingTransactionAmountsPerPeriodNotifier.updateData(false);
              }
            }
          },
          child: BarChart(
            BarChartData(
              barTouchData: BarTouchData(
                touchTooltipData: BarTouchTooltipData(
                  getTooltipColor: ((group) {
                    return Colors.grey;
                  }),
                  getTooltipItem: (a, b, c, d) => null,
                ),
              ),
              titlesData: FlTitlesData(
                show: true,
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        space: 16, //margin top
                        child: Text(bottomLabels[value.toInt()]),
                      );
                    },
                    reservedSize: 42,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: SizeConfig.safeBlockHorizontal * 14,
                    interval: 100,
                    getTitlesWidget: (value, meta) {
                      if (leftLabels.containsKey(value)) {
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: Text(
                            leftLabels[value]!,
                          ),
                        );
                      }
                      return const Text("");
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              barGroups: barChartData,
              gridData: const FlGridData(show: false),
            ),
          ),
        );
      },
    );
  }
}

Map<double, String> divideIntoCumulativeParts(double value) {
  Map<double, String> parts = {};

  if (value < 1000) {
    double part = 100;
    for (int i = 1; i <= 10; i++) {
      double cumulativeValue = part * i;
      String formattedValue = cumulativeValue.toStringAsFixed(0);
      parts[cumulativeValue] = formattedValue;
    }
  } else {
    double part = (value / 10).ceilToDouble();
    double increment = (part / 1000).ceilToDouble() * 1000;
    for (int i = 1; i <= 10; i++) {
      double cumulativeValue = increment * i;
      int incrementValue = (cumulativeValue / 1000).ceil();
      String formattedValue = '${incrementValue}k';
      parts[cumulativeValue] = formattedValue;
    }
  }

  return parts;
}