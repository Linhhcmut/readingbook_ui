import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_book/home/home_event.dart';
import 'package:reading_book/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(InitialHomeState()) {
    on<HomeItemBookPressEvent>(_navigatorBookPage);
  }
  void _navigatorBookPage(HomeItemBookPressEvent event, Emitter<HomeState> emit) {
    return emit(NavigatorBookPageHomeState(indexPage: event.indexPage));
  }
}
