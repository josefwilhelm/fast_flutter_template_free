import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rate_my_app/rate_my_app.dart';

// TODO update with your app id
final rateMyAppProvider = Provider((ref) {
  return RateMyApp(
    preferencesPrefix: 'rateMyApp_',
    minDays: 2,
    minLaunches: 3,
    remindDays: 7,
    remindLaunches: 10,
    googlePlayIdentifier: 'com.josefwilhelm.ai.bot.app',
    appStoreIdentifier: '6450509161',
  );
});
