import 'package:fast_flutter_template/common/providers/router_provider.dart';
import 'package:fast_flutter_template/common/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    final theme = ref.watch(themeProvider);

    return MaterialApp.router(
      routerConfig: router.config(),
      title: 'Fast Flutter Template Free',
      debugShowCheckedModeBanner: false,
      themeMode: theme,
      darkTheme: themeData(Brightness.dark, colorScheme(Brightness.dark)),
      theme: themeData(Brightness.light, colorScheme(Brightness.light)),
    );
  }
}
