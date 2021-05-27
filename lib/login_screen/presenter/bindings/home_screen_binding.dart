import 'package:bako_gerencial/login_screen/presenter/controllers/home_screen_controller.dart';
import 'package:get/instance_manager.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeScreenController>(HomeScreenController());
  }
}
