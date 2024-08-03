import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/providers/time_range.dart';
import 'package:frontend/src/widgets/pickers/cupertino_date_button.dart';
import 'package:frontend/src/widgets/pickers/cupertino_value_button.dart';

class TimeRangeSelector extends ConsumerWidget {
  const TimeRangeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timeRange = ref.watch(timeRangeProvider);
    final timeRangeNotifier = ref.read(timeRangeProvider.notifier);
    return Row(
      children: [
        CupertinoValueButton(
          selectedIndex: timeRange.selectedIndex,
          values: timeRangeNotifier.rangeList,
          onSelectedItemChanged: timeRangeNotifier.setSelectedRangeIndex,
        ),
        CupertinoDateButton(
          value: timeRange.start,
          onSelectedItemChanged: timeRangeNotifier.setStart,
          notAfterDate: timeRange.end,
        ),
        CupertinoDateButton(
          value: timeRange.end,
          onSelectedItemChanged: timeRangeNotifier.setEnd,
          notBeforeDate: timeRange.start,
        ),
      ],
    );
  }
}
