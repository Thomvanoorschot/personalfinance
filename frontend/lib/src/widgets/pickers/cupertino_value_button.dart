import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double _kItemExtent = 32.0;

class CupertinoValueButton extends StatelessWidget {
  const CupertinoValueButton({required this.selectedIndex, required this.values, required this.onSelectedItemChanged, super.key});

  final int selectedIndex;
  final List<String> values;
  final ValueSetter<int> onSelectedItemChanged;

  void _showDialog(BuildContext context, Widget child) {
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
        CupertinoPicker(
          magnification: 1.22,
          squeeze: 1.2,
          useMagnifier: true,
          itemExtent: _kItemExtent,
          scrollController: FixedExtentScrollController(
            initialItem: selectedIndex,
          ),
          onSelectedItemChanged: onSelectedItemChanged,
          children: List<Widget>.generate(values.length, (int index) {
            return Center(
              child: Text(
                values[index],
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
            );
          }),
        ),
      ),
      child: Text(
        values[selectedIndex],
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 22.0,
        ),
      ),
    );
  }
}
