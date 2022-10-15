import 'package:flutter/material.dart';

class HomeMostUsed extends StatelessWidget {
  const HomeMostUsed({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: theme.colorScheme.secondary,
      child: ListTile(
        leading: Icon(
          Icons.sports_bar_outlined,
          color: theme.colorScheme.onSecondary,
          size: 32,
        ),
        title: Text(
          "Sport: 3:13h",
          style: theme.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSecondary,
          ),
        ),
        subtitle: Text(
          "Most used task today",
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}

class HomeTimeInfo extends StatelessWidget {
  const HomeTimeInfo({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: theme.colorScheme.secondary,
            child: ListTile(
              leading: Icon(
                Icons.timer_outlined,
                color: theme.colorScheme.onSecondary,
                size: 32,
              ),
              minLeadingWidth: 22,
              title: Text(
                "3:13h",
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSecondary,
                ),
              ),
              subtitle: Text(
                "spended today",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onSecondary,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            color: theme.colorScheme.secondary,
            child: ListTile(
              leading: Icon(
                Icons.arrow_downward,
                color: Colors.redAccent,
                size: 32,
              ),
              minLeadingWidth: 22,
              title: Text(
                "12:04h",
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSecondary,
                ),
              ),
              subtitle: Text(
                "avg activity",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onSecondary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HomeCompleteInfo extends StatelessWidget {
  const HomeCompleteInfo({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: theme.colorScheme.secondary,
      child: ListTile(
        leading: CircularProgressIndicator(
          value: 10 / 30,
          color: theme.colorScheme.onSecondary,
          backgroundColor: theme.colorScheme.secondary,
        ),
        title: Text(
          "10/30",
          style: theme.textTheme.bodyLarge!.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSecondary,
          ),
        ),
        subtitle: Text(
          "Planed tasks complete today",
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.onSecondary,
          ),
        ),
      ),
    );
  }
}
