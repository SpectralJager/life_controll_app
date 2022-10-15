import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_controll_app/views/bloc/app_bloc.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    var appPref = BlocProvider.of<AppBloc>(context);
    var currentMode = appPref.state.mode == ThemeMode.light;
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1,
                      color: theme.colorScheme.onBackground,
                      strokeAlign: StrokeAlign.outside,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.onBackground,
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    "lib/assets/unkn2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "life managment app",
                  style: theme.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              style: theme.textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(Icons.task),
            title: Text(
              "Tasks",
              style: theme.textTheme.labelLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onBackground,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, "/tasks");
            },
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageTransitionSwitcher(
                duration: Duration(seconds: 1),
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
                child: currentMode
                    ? Icon(
                        key: Key("light"),
                        Icons.light_mode,
                        color: theme.colorScheme.primary,
                      )
                    : Icon(
                        key: Key("dark"),
                        Icons.dark_mode,
                        color: theme.colorScheme.onBackground,
                      ),
              ),
              Switch(
                  activeColor: theme.colorScheme.primary,
                  value: currentMode ? true : false,
                  onChanged: (value) => appPref.add(AppChangeTheme(
                      currentMode ? ThemeMode.dark : ThemeMode.light))),
            ],
          ),
        ],
      ),
    );
  }
}
