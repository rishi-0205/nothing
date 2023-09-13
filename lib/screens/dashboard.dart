import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/Task.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/circularindicator.dart';
import 'package:nothing/widgets/taskgrid.dart';

class DashBoard extends StatefulWidget {
  DashBoard({super.key});
  late darkmode theme = darkmode();
  late FontFamily font = FontFamily();
  List<Task> alltask = [
    Task(
        name: "Leetcode",
        description: "Solve 3 Problems on leetcode everyday",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
    Task(
        name: "Data Structures",
        description: "Learn one data structure everday",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
    Task(
        name: "Algorithms",
        description: "Learn one algorithm Everyday",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
    Task(
        name: "Codewars",
        description: "Solve problems on codewars",
        todays_status: false,
        deadline: DateTime(9, 9, 9),
        history: []),
  ];

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late User currentuser = User(
      email: "random.123@gmail.com",
      username: "random_123",
      goal: "Learn DSA",
      deadline: DateTime(2017, 5, 3),
      avatar: 1,
      overallprogress: 0.7,
      all_task: widget.alltask);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.theme.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: widget.theme.containerbg1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularIndicator(
                      font: widget.font,
                      progress: currentuser.overallprogress,
                      theme: widget.theme),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        "Goal: " + currentuser.goal,
                        style: widget.font.getPromptTextStyle(
                            color: widget.theme.textcolor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0),
                      ),
                      Text(
                        "Deadline: " + (currentuser.deadline).toString(),
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
            // Padding(
            //   padding: EdgeInsets.only(top: 26),
            //   child: TaskGrid(
            //       theme: widget.theme,
            //       font: widget.font,
            //       currentuser: widget.currentuser),
            // ),
          ],
        ));
  }
}
