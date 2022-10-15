import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_controll_app/constants/color_schemes.dart';
import 'package:life_controll_app/constants/text_theme.dart';
import 'package:life_controll_app/views/bloc/app_bloc.dart';
import 'package:life_controll_app/views/home/bloc/home_bloc.dart';
import 'package:life_controll_app/views/home/widgets/home_view.dart';
import 'package:life_controll_app/views/tasks/widgets/tasks_view.dart';

class LifeControll extends StatelessWidget {
  const LifeControll({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp(
          routes: {
            "/": (context) => BlocProvider(
                  create: (context) => HomeBloc(),
                  child: const HomeView(),
                ),
            "/tasks": (context) => const TasksView(),
          },
          initialRoute: "/",
          themeMode: state.mode,
          theme: ThemeData(
            colorScheme: lightColorScheme,
            textTheme: textTheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: darkColorScheme,
            textTheme: textTheme,
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          title: "Life controll",
        );
      },
    );
  }
}
