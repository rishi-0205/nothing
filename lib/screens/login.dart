import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/assets/theme.dart';
import 'package:nothing/widgets/textbox.dart';

class Login extends StatefulWidget {
  Login({super.key});
  late darkmode theme = darkmode();
  late FontFamily font = FontFamily();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
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
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: widget.theme.button,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(350),
                            ),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 7, bottom: 7, right: 53, left: 53),
                            child: Text(
                              "LOGIN",
                              style: widget.font.getPromptTextStyle(
                                  color: widget.theme.textcolor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                splashFactory: NoSplash.splashFactory),
                            child: Text("New to Nothing?",
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
