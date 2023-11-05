import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'logger.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    getLogger(provider.name ?? provider.runtimeType.toString())
        .d('newValue: $newValue');
  }
}
