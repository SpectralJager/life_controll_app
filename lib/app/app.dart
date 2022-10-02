import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LifeControll extends StatelessWidget {
  const LifeControll({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      routes: {},
      initialRoute: "/",
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      title: "Life controll",
    );
  }
}
