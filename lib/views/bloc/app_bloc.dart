import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required ThemeMode mode}) : super(AppState(mode: mode)) {
    on<AppChangeTheme>((event, emit) {
      emit(state.copyWith(mode: event.mode));
    });
  }
}
