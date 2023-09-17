import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/Task.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/tasklistgenerator.dart';

class DeletedTasks extends StatefulWidget {
  DeletedTasks({super.key});
  late darkmode theme = darkmode();
  late FontFamily font = FontFamily();
  TasklistGenerator tg = TasklistGenerator();
  List<Task> alltask = [
    Task(
      name: "Leetcode",
      todays_status: false,
      deleted: false,
      deadline: DateTime(9, 9, 9),
    ),
    Task(
      name: "Data Structures",
      todays_status: false,
      deleted: true,
      deadline: DateTime(9, 9, 9),
    ),
    Task(
      name: "Algorithms",
      todays_status: false,
      deleted: true,
      deadline: DateTime(9, 9, 9),
    ),
    Task(
      name: "Codewars",
      todays_status: false,
      deleted: false,
      deadline: DateTime(9, 9, 9),
    ),
  ];

  @override
  State<DeletedTasks> createState() => _DeletedTasksState();
}

class _DeletedTasksState extends State<DeletedTasks> {
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
        children: widget.tg
            .generateDeletedTasks(currentuser, widget.theme, widget.font),
      ),
    );
  }
}
