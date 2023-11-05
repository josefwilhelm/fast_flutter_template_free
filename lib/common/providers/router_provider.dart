import 'package:fast_flutter_template/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
// ignore: unsupported_provider_value
AppRouter router(RouterRef ref) {
  return AppRouter();
}
