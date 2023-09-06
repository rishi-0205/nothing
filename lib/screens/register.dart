import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/widgets/button.dart';
import 'package:nothing/widgets/textbox.dart';

class Register extends StatefulWidget {
  Register({super.key});
  late darkmode theme = darkmode();
  late FontFamily font = FontFamily();

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.theme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/assets/images/LOGO.png"),
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 12, right: 12),
                child: Container(
                  decoration: BoxDecoration(
                      color: widget.theme.containerbg1,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 36, right: 36, top: 19),
                          child: TextBox(
                            textEditingController: email,
                            hintText: "email id",
                            theme: widget.theme,
                            font: widget.font,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 36, right: 36, top: 19),
                          child: TextBox(
                            textEditingController: username,
                            hintText: "username",
                            theme: widget.theme,
                            font: widget.font,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 36, right: 36, top: 19),
                          child: TextBox(
                            textEditingController: password,
                            hintText: "password",
                            theme: widget.theme,
                            font: widget.font,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            passwordIcon: true,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Button(
                            bgcolor: widget.theme.button,
                            theme: widget.theme,
                            font: widget.font,
                            horizontalpadding: 44,
                            verticalpadding: 7,
                            text: "Register",
                            radius: 350,
                            fontsize: 14,
                            fontweight: FontWeight.w400,
                            onPressed: () {},
                          )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                splashFactory: NoSplash.splashFactory),
                            child: Text("Already have an account?",
                                style: widget.font.getPromptTextStyle(
                                    color: widget.theme.textcolor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0))),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
