import 'package:bako_gerencial/login_screen/presenter/controllers/login_screen_controller.dart';
import 'package:get/instance_manager.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginScreenController>(LoginScreenController());
  }
}
