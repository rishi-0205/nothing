import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/Task.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/taskgriditem.dart';

class TaskGridGenerator {
  List<Widget> generateGrid(User currentuser, darkmode theme, FontFamily font) {
    List<Widget> gridChildren = [];
    for (int i = 0; i < currentuser.all_task.length; i++) {
      if (currentuser.all_task[i].completed == true ||
          currentuser.all_task[i].deleted == true) {
        continue;
      } else {
        gridChildren.add(TaskGridItem(
          taskname: currentuser.all_task[i].name,
          description: currentuser.all_task[i].description,
          progress: currentuser.all_task[i].percentage,
          font: font,
          theme: theme,
        ));
      }
    }
    return gridChildren;
  }
}
