import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:go_router/go_router.dart';

// Stateful navigation based on:
// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    if (size.width < 450) {
      return ScaffoldWithNavigationBar(
        body: navigationShell,
        currentIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      );
    } else {
      return ScaffoldWithNavigationRail(
        body: navigationShell,
        currentIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch,
      );
    }
  }
}

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        height: SizeConfig.safeBlockVertical * 8,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.monetization_on),
            selectedIcon: Icon(Icons.monetization_on),
            label: 'Budget',
          ),
          NavigationDestination(
            icon: Icon(Icons.swap_horiz),
            selectedIcon: Icon(Icons.swap_horiz),
            label: 'Transactions',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined),
            selectedIcon: Icon(Icons.bar_chart),
            label: 'Insights',
          ),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: currentIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations:  <NavigationRailDestination>[
              NavigationRailDestination(
                icon: SvgPicture.asset(
                  'assets/money_bag.svg',
                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcIn),
                ),
                selectedIcon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.location_city_outlined),
                selectedIcon: Icon(Icons.location_city),
                label: Text('Locations'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}