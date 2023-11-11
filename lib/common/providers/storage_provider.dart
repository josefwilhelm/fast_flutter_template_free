import 'package:fast_flutter_template/utils/constants.dart';
import 'package:fast_flutter_template/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box preferencesBox;

Future<void> initHive() async {
  try {
    preferencesBox = await Hive.openBox(preferencesBoxKey);
    getLogger('Storage').i('init hive');
  } catch (e) {
    getLogger('Storage')
        .e('init hive failed. deleting box now and trying again', error: e);
    await Hive.deleteBoxFromDisk(preferencesBoxKey);

    preferencesBox = await Hive.openBox(preferencesBoxKey);
  }
}

final storageProvider = ChangeNotifierProvider<Storage>((ref) {
  final storage = Storage();
  return storage;
});

class Storage extends ChangeNotifier {
  final _logger = getLogger('Storage');

  int getTheme() {
    return preferencesBox.get(themePreferenceKey, defaultValue: 2);
  }

  void setTheme(int index) {
    preferencesBox.put(themePreferenceKey, index);
    _logger.d('themePreferenceKey: $index');

    notifyListeners();
  }
}
