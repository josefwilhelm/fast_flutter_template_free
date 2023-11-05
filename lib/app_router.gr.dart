// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:fast_flutter_template/app_router.dart' as _i3;
import 'package:fast_flutter_template/common/widgets/bottom_nav_bar.dart'
    as _i1;
import 'package:fast_flutter_template/features/dashboard/views/dashboard_screen.dart'
    as _i2;
import 'package:fast_flutter_template/features/pro/views/pro_screen.dart'
    as _i4;
import 'package:fast_flutter_template/features/settings/views/settings_screen.dart'
    as _i5;
import 'package:fast_flutter_template/features/settings/views/theme_selector_screen.dart'
    as _i7;
import 'package:fast_flutter_template/features/statistics/statistics_screen.dart'
    as _i6;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BottomNavBar.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BottomNavBar(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardScreen(),
      );
    },
    DashboardShellRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardShellPage(),
      );
    },
    ProRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsScreen(),
      );
    },
    SettingsShellRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsShellPage(),
      );
    },
    StatisticsRoute.name: (routeData) {
      final args = routeData.argsAs<StatisticsRouteArgs>(
          orElse: () => const StatisticsRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.StatisticsScreen(key: args.key),
      );
    },
    StatisticsShellRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.StatisticsShellPage(),
      );
    },
    ThemeSelectionRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ThemeSelectionScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavBar extends _i8.PageRouteInfo<void> {
  const BottomNavBar({List<_i8.PageRouteInfo>? children})
      : super(
          BottomNavBar.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBar';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i8.PageRouteInfo<void> {
  const DashboardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardShellPage]
class DashboardShellRoute extends _i8.PageRouteInfo<void> {
  const DashboardShellRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashboardShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardShellRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProScreen]
class ProRoute extends _i8.PageRouteInfo<void> {
  const ProRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SettingsScreen]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SettingsShellPage]
class SettingsShellRoute extends _i8.PageRouteInfo<void> {
  const SettingsShellRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsShellRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.StatisticsScreen]
class StatisticsRoute extends _i8.PageRouteInfo<StatisticsRouteArgs> {
  StatisticsRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          StatisticsRoute.name,
          args: StatisticsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'StatisticsRoute';

  static const _i8.PageInfo<StatisticsRouteArgs> page =
      _i8.PageInfo<StatisticsRouteArgs>(name);
}

class StatisticsRouteArgs {
  const StatisticsRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'StatisticsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.StatisticsShellPage]
class StatisticsShellRoute extends _i8.PageRouteInfo<void> {
  const StatisticsShellRoute({List<_i8.PageRouteInfo>? children})
      : super(
          StatisticsShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsShellRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ThemeSelectionScreen]
class ThemeSelectionRoute extends _i8.PageRouteInfo<void> {
  const ThemeSelectionRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ThemeSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemeSelectionRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
