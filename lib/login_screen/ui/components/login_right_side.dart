import 'package:bako_gerencial/core/colors.dart';
import 'package:bako_gerencial/login_screen/presenter/controllers/login_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html';

class LoginRightSide extends GetView<LoginScreenController> {
  const LoginRightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    print(screenSize.width);

    document.addEventListener('keydown', (dynamic event) {
      if (event.code == 'Tab') {
        event.preventDefault();
      }
    });
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 100, right: 100),
        color: backgroundColor,
        width: screenSize.width / 2.1,
        child: Column(
          children: [
            Spacer(flex: 4),
            SvgPicture.asset('assets/logo.svg', width: screenSize.width / 5.5),
            Spacer(flex: 1),
            Theme(
              data: Theme.of(context).copyWith(
                  textSelectionTheme:
                      TextSelectionThemeData(selectionColor: labelColor)),
              child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      buildEmail(),
                      SizedBox(
                        height: screenSize.height / 30,
                      ),
                      buildPassword()
                    ],
                  )),
            ),
            Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Expanded(
                      child: Text(
                        "Esqueci a senha",
                        style: GoogleFonts.nunito(
                            color: labelColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    onTap: () => print("esqueci"),
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            top: 30,
                            bottom: 30,
                            left: screenSize.width / 19,
                            right: screenSize.width / 19),
                        backgroundColor: backgroundPatternColor,
                        primary: successColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    onPressed: () => print("entrando"),
                    child: Text(
                      'Entrar',
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ))
              ],
            ),
            Spacer(flex: 4),
            Text(
              'Projeto de extensão da Universidade Tecnológica Federal do Paraná\nFeito com muito ❤',
              style: GoogleFonts.nunito(
                  color: labelColor, fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 1)
          ],
        ),
      ),
    );
  }

  Widget buildEmail() => TextFormField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: inputTextColor,
        style: GoogleFonts.nunito(
            color: inputTextColor, fontWeight: FontWeight.bold, fontSize: 25),
        onChanged: (value) => controller.email.value = value,
        decoration: InputDecoration(
            hintText: 'E-mail',
            hintStyle: GoogleFonts.nunito(
                color: labelColor, fontWeight: FontWeight.bold, fontSize: 25),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: labelColor,
                  width: 3,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: labelColor, width: 3))),
      );

  Widget buildPassword() => TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        cursorColor: inputTextColor,
        style: GoogleFonts.nunito(
            color: inputTextColor, fontWeight: FontWeight.bold, fontSize: 25),
        onChanged: (value) => controller.password.value = value,
        decoration: InputDecoration(
            hintText: 'Senha',
            hintStyle: GoogleFonts.nunito(
                color: labelColor, fontWeight: FontWeight.bold, fontSize: 25),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: labelColor,
                  width: 3,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: labelColor, width: 3))),
      );
}
