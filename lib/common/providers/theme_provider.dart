import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  void updateTheme(ThemeMode theme) {
    state = theme;
  }
}
