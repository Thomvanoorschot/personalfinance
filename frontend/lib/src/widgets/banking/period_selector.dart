import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/providers/period.dart';
import 'package:frontend/src/providers/time_range.dart';
import 'package:frontend/src/widgets/pickers/cupertino_date_button.dart';
import 'package:frontend/src/widgets/pickers/cupertino_value_button.dart';

class PeriodSelector extends ConsumerWidget {
  const PeriodSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final period = ref.watch(periodProvider);
    final periodNotifier = ref.read(periodProvider.notifier);
    return Wrap(
      spacing: 10,
      children: [
        CupertinoValueButton(
          selectedIndex: period.selectedIndex,
          // TODO Change where it selected LabelEN
          values: periodNotifier.periodList.map((x) => x.LabelEN).toList(),
          onSelectedItemChanged: periodNotifier.setSelectedRangeIndex,
        ),
      ],
    );
  }
}
