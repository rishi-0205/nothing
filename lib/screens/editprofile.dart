import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/widgets/button.dart';
import 'package:nothing/widgets/profilephoto.dart';
import 'package:nothing/widgets/textbox.dart';

class EditProfile extends StatefulWidget {
  EditProfile({super.key, required this.theme, required this.font});
  darkmode theme;
  FontFamily font;
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.theme.containerbg1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Center(
                child: GestureDetector(
              child: ProfilePhoto(),
              onTap: () {},
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 8),
            child: Text(
              "Email: ",
              style: widget.font.getPromptTextStyle(
                  color: widget.theme.textcolor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 30),
            child: TextBox(
                textEditingController: widget.email,
                hintText: "",
                theme: widget.theme,
                font: widget.font,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, bottom: 8),
            child: Text(
              "Username: ",
              style: widget.font.getPromptTextStyle(
                  color: widget.theme.textcolor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 30),
            child: TextBox(
                textEditingController: widget.username,
                hintText: "",
                theme: widget.theme,
                font: widget.font,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, bottom: 8),
            child: Text(
              "Password: ",
              style: widget.font.getPromptTextStyle(
                  color: widget.theme.textcolor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 30),
            child: TextBox(
                textEditingController: widget.password,
                passwordIcon: true,
                hintText: "",
                theme: widget.theme,
                font: widget.font,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Button(
                  theme: widget.theme,
                  font: widget.font,
                  horizontalpadding: 70,
                  verticalpadding: 10,
                  text: "Save",
                  radius: 10,
                  fontsize: 14,
                  fontweight: FontWeight.w500,
                  onPressed: () {},
                  bgcolor: widget.theme.button),
            ),
          )
        ],
      ),
    );
  }
}
