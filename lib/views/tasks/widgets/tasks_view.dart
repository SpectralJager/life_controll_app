import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:life_controll_app/views/widgets/drawer.dart';

import 'tasks_appbar.dart';
import 'tasks_card.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 32,
        ),
      ),
      drawer: MainDrawer(theme: theme),
      body: CustomScrollView(slivers: [
        TasksAppbar(theme: theme),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              for (int i = 0; i < 20; i++) TaskCard(theme: theme),
            ],
          ),
        ),
      ]),
    );
  }
}
