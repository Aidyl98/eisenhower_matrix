import 'package:eisenhower_matrix/features/home/controller/home_controller.dart';

class HomeControllerImplementation extends HomeController {
  // The current index of the tab bar of quadrants.
  int _quadrantIndex = 2;

  @override
  // Gets the current index of the tab bar of quadrants.
  int get quadrantIndex => _quadrantIndex;

  @override
  // Change the current index of the tab bar of quadrants.
  void setQuadrantIndex(int newIndex) {
    _quadrantIndex = newIndex;
    update();
  }
}
