import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/app_user.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserController extends _$UserController {
  @override
  FutureOr<AppUser> build() async {
    return AppUser();
  }
}
