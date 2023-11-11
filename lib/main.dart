import 'package:fast_flutter_template/app.dart';
import 'package:fast_flutter_template/common/providers/storage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await initHive();

  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
