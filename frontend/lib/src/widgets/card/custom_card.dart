import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.body, this.colorOverride, this.onTap});

  final Widget body;
  final Color? colorOverride;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: colorOverride ?? Theme.of(context).colorScheme.primaryContainer,
      child: InkWell(
        splashColor: colorOverride?.withAlpha(30) ?? Theme.of(context).colorScheme.primaryContainer.withAlpha(30),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only( left: 8.0, right: 8.0),
          child: body,
        ),
      ),
    );
  }
}
