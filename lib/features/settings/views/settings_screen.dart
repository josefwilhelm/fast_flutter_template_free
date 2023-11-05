import 'package:auto_route/auto_route.dart';
import 'package:fast_flutter_template/app_router.gr.dart';
import 'package:fast_flutter_template/common/providers/rate_my_app_provider.dart';
import 'package:fast_flutter_template/common/widgets/primary_button.dart';
import 'package:fast_flutter_template/utils/constants.dart';
import 'package:fast_flutter_template/utils/extensions/context_extension.dart';
import 'package:fast_flutter_template/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          PrimaryButton(
            text: 'Get Pro version',
            onPressed: () => context.navigateTo(const ProRoute()),
          ),
          Expanded(
            child: SettingsList(
              darkTheme: SettingsThemeData(
                settingsListBackground: Colors.transparent,
                settingsSectionBackground:
                    Theme.of(context).colorScheme.surface,
              ),
              lightTheme: const SettingsThemeData(
                settingsListBackground: Colors.transparent,
              ),
              platform: DevicePlatform.android,
              brightness: Brightness.light,
              sections: [
                SettingsSection(
                  title: const Text('Account'),
                  tiles: <SettingsTile>[
                    SettingsTile.navigation(
                      title: const Text('Select theme'),
                      leading: const Icon(Icons.language),
                      onPressed: (_) {
                        context.router.navigate(const ThemeSelectionRoute());
                      },
                    ),
                    SettingsTile.navigation(
                      title: const Text('Rate my app'),
                      leading: const Icon(Icons.rate_review),
                      onPressed: (_) {
                        ref.read(rateMyAppProvider).launchStore();
                      },
                    ),
                  ],
                ),
                SettingsSection(
                  title: const Text('Info'),
                  tiles: [
                    SettingsTile.navigation(
                      title: const Text('Privacy Policy'),
                      leading: const Icon(Icons.privacy_tip),
                      onPressed: (_) {
                        launchUrl(
                          Uri.parse(privacyUrl),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                    SettingsTile.navigation(
                      title: const Text('Terms of Service'),
                      leading: const Icon(Icons.description),
                      onPressed: (_) {
                        launchUrl(
                          Uri.parse(termsUrl),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                    SettingsTile.navigation(
                      title: const Text('Contact'),
                      leading: const Icon(Icons.email),
                      onPressed: (_) {
                        launchUrl(
                          Uri.parse('mailto:test@test.app'),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                    SettingsTile(
                      title: const Text('Open source licenses'),
                      leading: const Icon(Icons.code),
                      onPressed: (_) {
                        showLicensePage(
                          context: context,
                          applicationName: 'Fast Flutter Template',
                          applicationLegalese: '© 2023 Wilhelm',
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          verticalSpace20,
          FutureBuilder(
            future: PackageInfo.fromPlatform(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                final packageInfo = snapshot.data as PackageInfo;
                return Text(
                  'Version: ${packageInfo.version} (${packageInfo.buildNumber})',
                  style: context.textTheme.labelMedium,
                );
              }
              return Container();
            },
          ),
          verticalSpace20,
        ],
      ),
    );
  }
}
