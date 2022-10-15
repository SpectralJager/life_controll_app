// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'app_bloc.dart';

@immutable
class AppState {
  final ThemeMode mode;

  const AppState({required this.mode});

  AppState copyWith({
    ThemeMode? mode,
  }) {
    return AppState(
      mode: mode ?? this.mode,
    );
  }
}
