part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class AppChangeTheme extends AppEvent {
  final ThemeMode mode;

  AppChangeTheme(this.mode);
}
