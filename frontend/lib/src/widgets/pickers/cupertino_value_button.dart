import 'package:flutter/cupertino.dart';

const double _kItemExtent = 32.0;

class CupertinoValueButton extends StatelessWidget {
  const CupertinoValueButton(
      {required this.selectedIndex, required this.values, required this.onSelectedItemChanged, super.key});

  final int selectedIndex;
  final List<String> values;
  final ValueSetter<int> onSelectedItemChanged;

  void _showDialog(BuildContext context, Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
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
      padding: EdgeInsets.zero,
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
            return Center(child: Text(values[index]));
          }),
        ),
      ),
      // This displays the selected fruit name.
      child: Text(
        values[selectedIndex],
        style: const TextStyle(
          fontSize: 22.0,
        ),
      ),
    );
  }
}
