import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDateButton extends StatelessWidget {
  const CupertinoDateButton(
      {required this.value, required this.onSelectedItemChanged, this.notBeforeDate, this.notAfterDate, super.key});

  final DateTime value;
  final ValueSetter<DateTime> onSelectedItemChanged;
  final DateTime? notBeforeDate;
  final DateTime? notAfterDate;

  void _showDialog(
    BuildContext context,
    Widget child,
  ) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: Theme.of(context).colorScheme.primary,
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.all(10),
      onPressed: () => _showDialog(
        context,
        CupertinoTheme(
          data: CupertinoThemeData(
            textTheme: CupertinoTextThemeData(
              dateTimePickerTextStyle: TextStyle(
                inherit: false,
                fontFamily: 'CupertinoSystemDisplay',
                fontSize: 21,
                letterSpacing: 0.4,
                fontWeight: FontWeight.normal,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          child: CupertinoDatePicker(
            initialDateTime: value,
            mode: CupertinoDatePickerMode.date,
            use24hFormat: true,
            showDayOfWeek: true,
            maximumDate: notAfterDate,
            minimumDate: notBeforeDate,
            onDateTimeChanged: (val) {
              return onSelectedItemChanged(val);
            },
          ),
        ),
      ),
      child: Text(
        '${value.day}-${value.month}-${value.year}',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 22.0,
        ),
      ),
    );
  }
}
