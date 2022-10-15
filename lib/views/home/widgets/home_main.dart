import 'package:flutter/material.dart';

import 'home_main_cards.dart';
import 'home_main_chart.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        children: [
          HomeCompleteInfo(theme: theme),
          // SizedBox(height: 10),
          HomeTimeInfo(theme: theme),
          SizedBox(height: 40),
          MainHomeChart(theme: theme),
          SizedBox(height: 40),
          HomeMostUsed(theme: theme),
        ],
      ),
    );
  }
}
