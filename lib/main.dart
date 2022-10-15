import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_controll_app/app/app.dart';
import 'package:life_controll_app/views/bloc/app_bloc.dart';

void main(List<String> args) {
  runApp(BlocProvider(
    create: (context) => AppBloc(mode: ThemeMode.light),
    child: const LifeControll(),
  ));
}
