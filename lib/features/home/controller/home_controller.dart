import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  /// Gets the current index of the tab bar of quadrants.
  int get quadrantIndex;

  /// Change the current index of the tab bar of quadrants.
  void setQuadrantIndex(int newIndex);
}
