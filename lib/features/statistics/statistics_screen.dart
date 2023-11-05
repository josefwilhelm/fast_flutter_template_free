import 'package:auto_route/auto_route.dart';
import 'package:fast_flutter_template/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StatisticsScreen extends StatelessWidget {
  final List<BarStat> barStats = [
    BarStat(title: 'Total App downloads', value: '84'),
    BarStat(title: 'Last 30 days', value: '8'),
    BarStat(title: 'Revenue', value: '97\$'),
    BarStat(title: 'Revenue last 30 days', value: '19\$'),
  ];

  StatisticsScreen({super.key}); // You can customize these stats

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          _buildStatistics(),
          _buildDownloads(context),
        ],
      ),
    );
  }

  Padding _buildDownloads(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your downloads', style: context.textTheme.titleMedium),
          ListView(
            shrinkWrap: true,
            children: [
              Card(
                child: ListTile(
                  title: const Text('iOS'),
                  subtitle: Text(DateTime.now()
                      .subtract(const Duration(days: 1))
                      .toString()),
                  trailing: const Icon(Icons.local_attraction_rounded),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('iOS'),
                  subtitle: Text(DateTime.now()
                      .subtract(const Duration(days: 3))
                      .toString()),
                  trailing: const Icon(Icons.local_attraction_rounded),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Android'),
                  subtitle: Text(DateTime.now()
                      .subtract(const Duration(days: 5))
                      .toString()),
                  trailing: const Icon(Icons.local_attraction_rounded),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _buildStatistics() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: barStats.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(barStats[index].title,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(barStats[index].value),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class BarStat {
  final String title;
  final String value;

  BarStat({required this.title, required this.value});
}
