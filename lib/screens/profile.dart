import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/widgets/button.dart';
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
    return Scaffold(
      backgroundColor: widget.theme.background,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfilePhoto(),
            Padding(
              padding: const EdgeInsets.only(top: 4.5),
              child: Text(
                "username",
                style: widget.font.getPromptTextStyle(
                    color: widget.theme.textcolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 43),
              child: Button(
                bgcolor: widget.theme.containerbg1,
                theme: widget.theme,
                font: widget.font,
                horizontalpadding: 105,
                verticalpadding: 9.5,
                text: "EDIT PROFILE",
                radius: 10,
                fontsize: 14,
                fontweight: FontWeight.w500,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Button(
                bgcolor: widget.theme.containerbg1,
                theme: widget.theme,
                font: widget.font,
                horizontalpadding: 97,
                verticalpadding: 9.5,
                text: "DELETED TASKS",
                radius: 10,
                fontsize: 14,
                fontweight: FontWeight.w500,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Button(
                bgcolor: widget.theme.containerbg1,
                theme: widget.theme,
                font: widget.font,
                horizontalpadding: 85,
                verticalpadding: 9.5,
                text: "COMPLETED TASKS",
                radius: 10,
                fontsize: 14,
                fontweight: FontWeight.w500,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Button(
                bgcolor: widget.theme.containerbg1,
                theme: widget.theme,
                font: widget.font,
                horizontalpadding: 113.5,
                verticalpadding: 9.5,
                text: "ABOUT US",
                radius: 10,
                fontsize: 14,
                fontweight: FontWeight.w500,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Button(
                bgcolor: widget.theme.containerbg1,
                theme: widget.theme,
                font: widget.font,
                horizontalpadding: 106,
                verticalpadding: 9.5,
                text: "CONTACT US",
                radius: 10,
                fontsize: 14,
                fontweight: FontWeight.w500,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
