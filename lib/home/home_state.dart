class HomeState {}

class InitialHomeState extends HomeState {}

class NavigatorBookPageHomeState extends HomeState {
  final int indexPage;
  NavigatorBookPageHomeState({required this.indexPage});
}
