import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'storage_provider.dart';

part 'theme_provider.g.dart';

@riverpod
ThemeMode theme(ThemeRef ref) {
  return ThemeMode.values[ref.read(storageProvider).getTheme()];
}
