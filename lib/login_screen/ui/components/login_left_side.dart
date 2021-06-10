import 'package:bako_gerencial/core/colors.dart';
import 'package:bako_gerencial/login_screen/presenter/controllers/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:simple_shadow/simple_shadow.dart';

class LoginLeftSide extends GetView<LoginScreenController> {
  const LoginLeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              'pattern.png',
            ).image,
            scale: 3,
            repeat: ImageRepeat.repeat,
          ),
          color: backgroundPatternColor,
          boxShadow: [BoxShadow(blurRadius: 2)]),
      padding: EdgeInsets.all(screenSize.width / 8.5),
      width: screenSize.width / 2.1,
      child: SimpleShadow(child: SvgPicture.asset('assets/bako.svg')),
    );
  }
}
