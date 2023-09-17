//Remove all code and make a
import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/tasklistitem.dart';

class TasklistGenerator {
  List<Widget> generateTasks(
      User currentuser, darkmode theme, FontFamily font) {
    List<Widget> columnChildren = [];
    for (int i = 0; i < currentuser.all_task.length; i++) {
      if (currentuser.all_task[i].completed == true ||
          currentuser.all_task[i].deleted == true) {
        continue;
      } else {
        columnChildren.add(TaskListItem(
            theme: theme,
            font: font,
            status: currentuser.all_task[i].todays_status,
            taskname: currentuser.all_task[i].name));
      }
    }
    return columnChildren;
  }

  List<Widget> generateCompletedTasks(
      User currentuser, darkmode theme, FontFamily font) {
    List<Widget> columnChildren = [];
    for (int i = 0; i < currentuser.all_task.length; i++) {
      if (currentuser.all_task[i].completed == true &&
          currentuser.all_task[i].deleted == false) {
        columnChildren.add(TaskListItem(
            theme: theme,
            font: font,
            status: currentuser.all_task[i].todays_status,
            taskname: currentuser.all_task[i].name));
      } else {
        continue;
      }
    }
    return columnChildren;
  }

  List<Widget> generateDeletedTasks(
      User currentuser, darkmode theme, FontFamily font) {
    List<Widget> columnChildren = [];
    for (int i = 0; i < currentuser.all_task.length; i++) {
      if (currentuser.all_task[i].completed == false &&
          currentuser.all_task[i].deleted == true) {
        columnChildren.add(TaskListItem(
            theme: theme,
            font: font,
            status: currentuser.all_task[i].todays_status,
            taskname: currentuser.all_task[i].name));
      } else {
        continue;
      }
    }
    return columnChildren;
  }
}
