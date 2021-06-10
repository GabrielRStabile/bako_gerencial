import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  final formKey = GlobalKey<FormState>();
}
