import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';

class TaskGridItem extends StatefulWidget {
  TaskGridItem(
      {super.key,
      required this.taskname,
      required this.description,
      required this.progress,
      required this.theme,
      required this.font});
  String taskname;
  String description;
  double progress;
  late darkmode theme;
  late FontFamily font;

  @override
  State<TaskGridItem> createState() => _TaskGridItemState();
}

class _TaskGridItemState extends State<TaskGridItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: widget.theme.taskborder,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10, bottom: 21, top: 57),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 22),
              child: Text(
                widget.taskname,
                style: widget.font.getPromptTextStyle(
                    color: widget.theme.textcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, right: 27),
              child: Text(
                "Description:",
                style: widget.font.getPromptTextStyle(
                    color: widget.theme.textcolor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 27),
              child: Text(
                widget.description,
                style: widget.font.getPromptTextStyle(
                    color: widget.theme.textcolor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33, right: 14),
              child: LinearProgressIndicator(
                backgroundColor: widget.theme.progressempty,
                color: widget.theme.progressfill,
                value: widget.progress,
                minHeight: 7,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Text("Progress",
                      style: widget.font.getPromptTextStyle(
                          color: widget.theme.textcolor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0)),
                ),
                Text(
                  (widget.progress * 100).toString() + "%",
                  style: widget.font.getPromptTextStyle(
                      color: widget.theme.textcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
