import 'package:eisenhower_matrix/features/home/home_exporter.dart';
import 'package:get/get.dart';

class Config {
  /// Init the Dependencies injection of the Controllers of the View.
  static void initControllers() {
    Get.put<HomeController>(HomeControllerImplementation());
  }
}
