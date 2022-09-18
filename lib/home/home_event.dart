class HomeEvent {}

class HomeItemBookPressEvent extends HomeEvent {
  final int indexPage;
  HomeItemBookPressEvent({required this.indexPage});
}
