import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/taskgridgenerator.dart';

class TaskGrid extends StatefulWidget {
  TaskGrid(
      {super.key,
      required this.theme,
      required this.font,
      required this.currentuser});
  darkmode theme;
  FontFamily font;
  User currentuser;
  TaskGridGenerator tg = TaskGridGenerator();

  @override
  State<TaskGrid> createState() => _TaskGridState();
}

class _TaskGridState extends State<TaskGrid> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildListDelegate(widget.tg
            .generateGrid(widget.currentuser, widget.theme, widget.font)),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 10,
            childAspectRatio: 0.66));
  }
}

// GridView.count(
//         crossAxisSpacing: 16,
//         mainAxisSpacing: 10,
//         crossAxisCount: 2,
//         childAspectRatio: 0.66,
//         children: widget.tg
//             .generateGrid(widget.currentuser, widget.theme, widget.font));
