import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_router.gr.dart';

@RoutePage()
class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const routes = [
      DashboardShellRoute(),
      StatisticsShellRoute(),
      SettingsShellRoute(),
    ];

    return AutoTabsScaffold(
      routes: routes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          destinations: const [
            _NavItem(
              iconData: Icons.local_bar,
              label: 'Dashboard',
            ),
            _NavItem(
              iconData: Icons.bar_chart,
              label: 'Stats',
            ),
            _NavItem(
              iconData: Icons.settings_outlined,
              label: 'Settings',
            ),
          ],
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: (index) {
            tabsRouter.setActiveIndex(index);
          },
        );
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.iconData,
    required this.label,
  });

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(
        iconData,
      ),
      selectedIcon: Icon(
        iconData,
        color: Theme.of(context).colorScheme.primary,
      ),
      label: label,
    );
  }
}
