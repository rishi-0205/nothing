import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';

class Button extends StatefulWidget {
  Button(
      {super.key,
      required this.theme,
      required this.font,
      required this.horizontalpadding,
      required this.verticalpadding,
      required this.text,
      required this.radius,
      required this.fontsize,
      required this.fontweight,
      required this.onPressed,
      required this.bgcolor});
  darkmode theme;
  FontFamily font;
  String text;
  double verticalpadding;
  double horizontalpadding;
  double radius;
  double fontsize;
  FontWeight fontweight;
  Color bgcolor;
  VoidCallback onPressed;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.bgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.radius),
        ),
      ),
      onPressed: widget.onPressed,
      child: Padding(
        padding: EdgeInsets.only(
            top: widget.verticalpadding,
            bottom: widget.verticalpadding,
            right: widget.horizontalpadding,
            left: widget.horizontalpadding),
        child: Text(
          widget.text,
          style: widget.font.getPromptTextStyle(
              color: widget.theme.textcolor,
              fontSize: widget.fontsize,
              fontWeight: widget.fontweight,
              letterSpacing: 0),
        ),
      ),
    );
  }
}
