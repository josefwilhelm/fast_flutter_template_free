import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pro_provider.g.dart';

@riverpod
class Pro extends _$Pro {
  @override
  bool build() {
    const isPro = false;
    return isPro;
  }
}
