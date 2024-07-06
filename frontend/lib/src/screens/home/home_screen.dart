import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/src/providers/user.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
        child: Column(
          children: [
            CustomCard(
              onTap: () {},
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 20,
                    children: [
                      Text(
                        "Available balance",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "\$3,578",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "See details",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Text("Second")
                ],
              ),
            ),
            CustomCard(
              colorOverride: Theme.of(context).colorScheme.secondaryContainer,
              onTap: () {},
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 20,
                    children: [
                      Text(
                        "Budget for October",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "Cash available",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  Text(
                    "\$2,478",
                    style: Theme.of(context).textTheme.titleLarge,
                  )
                ],
              ),
            ),
            CustomCard(
              colorOverride: Theme.of(context).colorScheme.surfaceContainer,
              onTap: () {},
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 20,
                    children: [
                      Text(
                        "Create a savings goal",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        "Set goals and track them",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                      'assets/money_bag.svg',
                    colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcIn),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
