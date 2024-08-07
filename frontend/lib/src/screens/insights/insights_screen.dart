import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:frontend/src/widgets/banking/balances_per_day_chart.dart';
import 'package:frontend/src/widgets/banking/period_selector.dart';
import 'package:frontend/src/widgets/banking/time_range_selector.dart';
import 'package:frontend/src/widgets/budgeting/spending_chart.dart';
import 'package:frontend/src/widgets/budgeting/transaction_category_group_chart.dart';

class InsightsScreen extends ConsumerWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Insights"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                "Account balance",
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 25,
                child: const BalancesPerDayChart(),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8, top: 16),
                child: TimeRangeSelector(),
              ),
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 50,
                child: const TransactionCategoryGroupChart(),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 50,
                child: const SpendingChart(),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8, top: 16),
                child: PeriodSelector(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
