import 'package:flutter/material.dart';
import 'package:nothing/assets/theme.dart';

class Login extends StatefulWidget {
  Login({super.key});
  late primarytheme theme = primarytheme();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.theme.mainBackground,
    );
  }
}
