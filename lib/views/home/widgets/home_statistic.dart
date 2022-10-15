import 'package:flutter/material.dart';

import 'home_indicator.dart';
import 'home_statistics.dart';

class HomeStatistics extends StatelessWidget {
  const HomeStatistics({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: theme.colorScheme.primaryContainer),
          child: ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 32,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right,
                size: 32,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            title: Text(
              "Last 24H",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ),
        SizedBox(height: 40),
        StatisticsHomeChart(
          theme: theme,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: Color(0xff0293ee),
                text: 'First',
                isSquare: true,
                theme: theme,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xfff8b250),
                text: 'Second',
                isSquare: true,
                theme: theme,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xff845bef),
                text: 'Third',
                isSquare: true,
                theme: theme,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Color(0xff13d38e),
                text: 'Fourth',
                isSquare: true,
                theme: theme,
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
