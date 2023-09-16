import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/widgets/button.dart';
import 'package:nothing/widgets/textbox.dart';

class AddTask extends StatefulWidget {
  AddTask({super.key, required this.font, required this.theme});
  darkmode theme;
  FontFamily font;

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController title = TextEditingController();

  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.theme.containerbg1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 27, left: 288, right: 22),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.close_rounded),
              color: widget.theme.textcolor,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 19, left: 23, bottom: 18, right: 29),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    "Title:",
                    style: widget.font.getPromptTextStyle(
                        color: widget.theme.textcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0),
                  ),
                ),
                Expanded(
                  child: TextBox(
                      textEditingController: title,
                      hintText: "",
                      theme: widget.theme,
                      font: widget.font,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 23, right: 29),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    "Description:",
                    style: widget.font.getPromptTextStyle(
                        color: widget.theme.textcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0),
                  ),
                ),
                Expanded(
                  child: TextBox(
                      textEditingController: description,
                      hintText: "",
                      maxlines: 2,
                      theme: widget.theme,
                      font: widget.font,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 24, left: 219, bottom: 25, right: 41),
            child: Button(
                theme: widget.theme,
                font: widget.font,
                horizontalpadding: 16,
                verticalpadding: 2,
                text: "add",
                radius: 350,
                fontsize: 14,
                fontweight: FontWeight.w400,
                onPressed: () {},
                bgcolor: widget.theme.button),
          )
        ],
      ),
    );
  }
}
