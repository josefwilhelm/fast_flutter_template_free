import 'package:auto_route/auto_route.dart';
import 'package:fast_flutter_template/common/widgets/primary_button.dart';
import 'package:fast_flutter_template/utils/extensions/context_extension.dart';
import 'package:fast_flutter_template/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ProScreen extends StatelessWidget {
  const ProScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Get Pro'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const Divider(
              endIndent: 40,
              indent: 40,
            ),
            verticalSpace20,
            Card(
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(
                      Icons.local_activity,
                      size: 30,
                    ),
                    title: Text(
                      'Pro Template',
                      style: context.textTheme.titleLarge,
                    ),
                    subtitle: Text(
                      '199\$ - Lifetime access',
                      style: context.textTheme.titleMedium,
                    ),
                  ),
                  const Divider(
                    endIndent: 40,
                    indent: 40,
                  ),
                  const ListTile(
                    title: Text('Save 80 hours of development time.'),
                    leading: Icon(Icons.computer),
                  ),
                  const ListTile(
                    title: Text('Only 99\$ for a limited time.'),
                    leading: Icon(Icons.attach_money_outlined),
                  ),
                  verticalSpace24,
                  const Divider(
                    endIndent: 40,
                    indent: 40,
                  ),
                  verticalSpace24,
                  PrimaryButton(
                      text: 'Get access now!',
                      onPressed: () {
                        launchUrl(
                            Uri.parse('https://www.fastfluttertemplate.com/'));
                      })
                ],
              ),
            ))
          ]),
        ));
  }
}
