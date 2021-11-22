import 'package:flutter/material.dart';
import 'profil.dart';
import '../../helpers/statisticButton.dart';

class PageStatistics extends StatelessWidget {
  const PageStatistics({Key? key}) : super(key: key);
  static const List<Map<String, String>> pageStatisticsData = [
    {'label': 'Mes assemblées', 'count': '2'},
    {'label': 'Réunions assemblées', 'count': '1'},
    {'label': 'Messagerie assemblée', 'count': '5'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Profil(),
          ...pageStatisticsData
              .map((Map<String, String> singleStatData) => StatisticButton(
                  label: singleStatData['label'] ?? '',
                  count: singleStatData['count'] ?? ''))
              .toList()
        ],
      ),
    );
  }
}
