import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/theme.dart';
import 'package:nothing/widgets/profilephoto.dart';

class Profile extends StatefulWidget {
  Profile({super.key});
  late darkmode theme = darkmode();
  late FontFamily font = FontFamily();

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfilePhoto(),
        Container(
          decoration: BoxDecoration(),
        )
      ],
    );
  }
}
