import 'package:auto_route/annotations.dart';
import 'package:fast_flutter_template/common/providers/theme_provider.dart';
import 'package:fast_flutter_template/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ThemeSelectionScreen extends ConsumerWidget {
  const ThemeSelectionScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Select theme'),
        ),
        body: Center(
            child: ListView.builder(
          itemCount: availableThemes.length,
          itemBuilder: (BuildContext context, int index) {
            final item = availableThemes[index];
            return CheckboxListTile(
              value: theme == item,
              title: Text(item.name),
              onChanged: (_) {
                ref.read(themeProvider.notifier).updateTheme(item);
              },
            );
          },
        )));
  }
}
