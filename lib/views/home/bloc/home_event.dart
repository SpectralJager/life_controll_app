part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ChangePage extends HomeEvent {
  final int index;

  ChangePage(this.index);
}
