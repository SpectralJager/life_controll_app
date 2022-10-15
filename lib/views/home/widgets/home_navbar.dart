import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_controll_app/views/home/bloc/home_bloc.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: theme.colorScheme.primary,
          unselectedItemColor: theme.colorScheme.onSecondaryContainer,
          backgroundColor: theme.colorScheme.secondaryContainer,
          type: BottomNavigationBarType.fixed,
          currentIndex: state.pageIndex,
          onTap: (value) => context.read<HomeBloc>().add(ChangePage(value)),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Statistic"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Schedule"),
          ],
        );
      },
    );
  }
}
