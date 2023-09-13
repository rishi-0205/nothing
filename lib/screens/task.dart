import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/Task.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/tasklistgenerator.dart';

class Tasks extends StatefulWidget {
  Tasks({super.key});
  late darkmode theme = darkmode();
  late FontFamily font = FontFamily();
  TasklistGenerator tg = TasklistGenerator();
  List<Task> alltask = [
    Task(
        name: "Leetcode",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
    Task(
        name: "Data Structures",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
    Task(
        name: "Algorithms",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
    Task(
        name: "Codewars",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
  ];

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  late User currentuser = User(
      email: "random.123@gmail.com",
      username: "random_123",
      avatar: 1,
      all_task: widget.alltask,
      deadline: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.theme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            widget.tg.generateTasks(currentuser, widget.theme, widget.font),
      ),
    );
  }
}
