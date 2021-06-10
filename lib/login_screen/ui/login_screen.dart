import 'package:bako_gerencial/login_screen/presenter/controllers/login_screen_controller.dart';
import 'package:bako_gerencial/login_screen/ui/components/login_left_side.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'components/login_right_side.dart';

class HomeScreen extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [LoginLeftSide(), LoginRightSide()],
          ),
        ));
  }
}
