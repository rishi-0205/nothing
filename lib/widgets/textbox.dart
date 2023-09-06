import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';

class TextBox extends StatefulWidget {
  TextBox(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.theme,
      required this.font,
      this.readOnly = false,
      this.currency = false,
      required this.fontSize,
      required this.fontWeight,
      this.passwordIcon = false});

  TextEditingController textEditingController;
  String hintText;
  darkmode theme;
  FontFamily font;
  bool readOnly;
  double fontSize;
  bool currency;
  FontWeight fontWeight;
  bool passwordIcon;

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  bool _isPasswordVisible = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: widget.theme.textborder, width: 1),
        ),
      ),
      child: TextField(
        obscureText: _isPasswordVisible,
        style: TextStyle(color: widget.theme.textcolor),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: widget.font.getPromptTextStyle(
              color: widget.theme.hinttext,
              fontSize: widget.fontSize,
              fontWeight: widget.fontWeight,
              letterSpacing: 0),
          filled: true,
          border: InputBorder.none,
          suffixIcon: widget.passwordIcon
              ? IconButton(
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: widget.theme.hinttext,
                  ),
                  onPressed: _togglePasswordVisibility,
                )
              : null,
        ),
      ),
    );
  }
}
