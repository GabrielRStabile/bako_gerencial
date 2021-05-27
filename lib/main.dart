import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'login_screen/presenter/bindings/home_screen_binding.dart';
import 'login_screen/ui/login_screen.dart';

void main() {
  runApp(GetMaterialApp(initialRoute: "/", getPages: [
    GetPage(name: "/", page: () => HomeScreen(), binding: HomeScreenBinding())
  ]));
}
