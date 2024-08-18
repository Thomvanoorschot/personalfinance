import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabeledSwitch extends StatelessWidget {
  const LabeledSwitch({required this.label, required this.value, required this.onChanged, super.key});

  final String label;
  final bool value;
  final ValueSetter<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
            softWrap: false,
          ),
        ),
        Flexible(
          child: CupertinoSwitch(
            value: value,
            onChanged: onChanged,
            activeColor: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
