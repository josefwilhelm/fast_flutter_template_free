import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  late final List<AutoRoute> routes = [
    AutoRoute(path: '/pro', page: ProRoute.page),
    AutoRoute(
      page: BottomNavBar.page,
      initial: true,
      path: '/bottom-nav-bar',
      children: [
        RedirectRoute(path: '', redirectTo: 'dashboard'),
        AutoRoute(
          page: DashboardShellRoute.page,
          path: 'dashboard',
          maintainState: true,
          children: [
            AutoRoute(path: '', page: DashboardRoute.page),
          ],
        ),
        AutoRoute(
          page: StatisticsShellRoute.page,
          path: 'statistics',
          children: [
            AutoRoute(path: '', page: StatisticsRoute.page),
          ],
        ),
        AutoRoute(
          page: SettingsShellRoute.page,
          path: 'settings',
          children: [
            AutoRoute(path: '', page: SettingsRoute.page),
            AutoRoute(path: '', page: ThemeSelectionRoute.page),
          ],
        ),
      ],
    ),
  ];
}

@RoutePage()
class DashboardShellPage extends AutoRouter {
  const DashboardShellPage({super.key});
}

@RoutePage()
class StatisticsShellPage extends AutoRouter {
  const StatisticsShellPage({super.key});
}

@RoutePage()
class SettingsShellPage extends AutoRouter {
  const SettingsShellPage({super.key});
}
