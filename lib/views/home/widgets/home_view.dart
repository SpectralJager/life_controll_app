// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animations/animations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:life_controll_app/views/home/bloc/home_bloc.dart';
import 'package:life_controll_app/views/home/widgets/home_statistics.dart';

import 'package:life_controll_app/views/widgets/drawer.dart';
import 'package:table_calendar/table_calendar.dart';

import 'home_appbar.dart';
import 'home_main.dart';
import 'home_navbar.dart';
import 'home_statistic.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final pages = [
      HomeMain(theme: theme),
      HomeStatistics(theme: theme),
      HomeSchedule(theme: theme),
    ];
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: theme.colorScheme.primaryContainer,
            toolbarHeight: 84,
            automaticallyImplyLeading: false,
            title: HomeAppbar(theme: theme),
          ),
          bottomNavigationBar: HomeNavBar(theme: theme),
          drawer: MainDrawer(theme: theme),
          body: PageTransitionSwitcher(
            transitionBuilder: (
              Widget child,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return FadeThroughTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: pages[state.pageIndex],
          ),
          // body: HomeMain(theme: theme),
        );
      },
    );
  }
}

class HomeSchedule extends StatelessWidget {
  const HomeSchedule({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime.now().subtract(Duration(days: 365 * 2)),
          lastDay: DateTime.now().add(
            Duration(days: 365 * 2),
          ),
          calendarFormat: CalendarFormat.month,
          headerStyle: HeaderStyle(
            decoration:
                BoxDecoration(color: theme.colorScheme.primaryContainer),
            titleTextStyle: theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onPrimaryContainer,
            ),
            headerMargin: EdgeInsets.only(bottom: 16, top: 0),
            headerPadding: EdgeInsets.only(top: 0),
            formatButtonVisible: false,
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: theme.textTheme.bodyMedium!
                .copyWith(color: theme.colorScheme.onBackground),
            weekendStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          calendarStyle: CalendarStyle(
            weekendTextStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
            defaultTextStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onBackground,
            ),
            todayDecoration:
                BoxDecoration(color: theme.colorScheme.primaryContainer),
            todayTextStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
            outsideTextStyle: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.secondary.withOpacity(.7),
            ),
          ),
        ),
      ],
    );
  }
}
