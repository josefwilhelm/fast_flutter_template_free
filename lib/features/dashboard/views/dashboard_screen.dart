import 'package:auto_route/auto_route.dart';
import 'package:fast_flutter_template/features/dashboard/models/app_idea.dart';
import 'package:fast_flutter_template/features/dashboard/providers/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appIdeas = ref.watch(appIdeasProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Ideas'),
      ),
      body: Center(
          child: appIdeas.when(
        data: (data) => _buildDataView(data),
        error: (e, s) => const Text('Something went wrong'),
        loading: () => const CircularProgressIndicator(),
      )),
    );
  }

  ListView _buildDataView(List<AppIdea> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        final item = data[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(item.icon),
                title: Text(item.title),
                subtitle: Text(item.description),
              ),
            ),
          ),
        );
      },
    );
  }
}
