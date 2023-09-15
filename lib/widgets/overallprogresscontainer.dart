import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/circularindicator.dart';

class OverallProgress extends StatefulWidget {
  OverallProgress(
      {super.key,
      required this.theme,
      required this.font,
      required this.currentuser});
  darkmode theme;
  FontFamily font;
  User currentuser;

  @override
  State<OverallProgress> createState() => _OverallProgressState();
}

class _OverallProgressState extends State<OverallProgress> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.5, left: 8.5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: widget.theme.containerbg1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(28),
              child: CircularIndicator(
                  font: widget.font,
                  progress: widget.currentuser.overallprogress,
                  theme: widget.theme),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Overall Consistency Report",
                  style: widget.font.getPromptTextStyle(
                      color: widget.theme.textcolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0),
                ),
                Text(
                  "Goal: " + widget.currentuser.goal,
                  style: widget.font.getPromptTextStyle(
                      color: widget.theme.textcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0),
                ),
                Text(
                  "Deadline: " +
                      (DateFormat.yMd().format(widget.currentuser.deadline))
                          .toString(),
                  style: widget.font.getPromptTextStyle(
                      color: widget.theme.textcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
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
