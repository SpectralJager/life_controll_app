import 'package:bloc/bloc.dart';
import 'package:life_controll_app/views/home/widgets/home_main.dart';
import 'package:life_controll_app/views/home/widgets/home_view.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(pageIndex: 0)) {
    on<ChangePage>((event, emit) {
      emit(state.copyWith(pageIndex: event.index));
    });
  }
}
