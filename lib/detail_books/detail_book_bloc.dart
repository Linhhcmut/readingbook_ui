import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_book/detail_books/detail_book_state.dart';
import 'detail_book_event.dart';

class DetailBookBloc extends Bloc<DetailBookEvent, DetailBookState> {
  DetailBookBloc() : super(InitialDetailBookState()) {
    on<BackButtonPressEvent>(_popDetailPage);
  }

  void _popDetailPage(BackButtonPressEvent event, Emitter<DetailBookState> emit) {
    return emit(BackButtonDetailBookState());
  }
}
