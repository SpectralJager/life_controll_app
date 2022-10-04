import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:life_controll_app/views/home/widgets/home_view.dart';

class LifeControll extends StatelessWidget {
  const LifeControll({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomeView(),
      },
      initialRoute: "/",
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: "Life controll",
    );
  }
}
