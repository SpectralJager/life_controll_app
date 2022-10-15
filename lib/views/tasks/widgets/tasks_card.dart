import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.colorScheme.secondary,
      margin: EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        leading: Icon(
          Icons.sports_bar_outlined,
          size: 32,
          color: theme.colorScheme.onSecondary,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 32,
          color: theme.colorScheme.onSecondary,
        ),
        title: Text(
          "Chief Security Planner",
          softWrap: false,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodyLarge!
              .copyWith(color: theme.colorScheme.onSecondary),
        ),
        subtitle: Text(
          "Vitae consequatur est nostrum aut velit nihil est debitis est. Iusto est sint provident est autem aut aliquam. Itaque consectetur sit atque facere magni iste nesciunt dolores. Dolor repellat iste debitis.",
          style: theme.textTheme.bodyLarge!
              .copyWith(color: theme.colorScheme.onSecondary.withOpacity(.7)),
          softWrap: false,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
