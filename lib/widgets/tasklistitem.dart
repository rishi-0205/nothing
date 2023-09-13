import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';

class TaskListItem extends StatefulWidget {
  TaskListItem(
      {super.key,
      required this.theme,
      required this.font,
      required this.status,
      required this.taskname});

  darkmode theme;
  FontFamily font;
  bool status;
  String taskname;

  @override
  State<TaskListItem> createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  bool _isDone = false;
  void _toggleStatus() {
    setState(() {
      widget.status = !widget.status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10, right: 15, left: 15),
      child: Container(
        decoration: BoxDecoration(
          color: widget.theme.containerbg1,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 23, right: 11),
              child: IconButton(
                splashRadius: 1,
                padding: EdgeInsets.all(0),
                //TRY THIS WITH CHECKBOX WIDGET
                icon: Icon(
                  widget.status
                      ? Icons.check_box_outlined
                      : Icons.check_box_outline_blank,
                  color: widget.theme.checkbox,
                  size: 32,
                ),
                onPressed: _toggleStatus,
              ),
            ),
            Text(
              widget.taskname,
              style: widget.font.getPromptTextStyle(
                  color: widget.theme.textcolor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0),
            )
          ],
        ),
      ),
    );
  }
}
