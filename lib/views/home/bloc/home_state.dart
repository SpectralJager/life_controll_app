// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

@immutable
class HomeState {
  final int pageIndex;

  const HomeState({required this.pageIndex});

  HomeState copyWith({
    int? pageIndex,
  }) {
    return HomeState(
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }
}
