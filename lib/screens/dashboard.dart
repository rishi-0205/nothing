import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/model/Task.dart';
import 'package:nothing/model/user.dart';
import 'package:nothing/widgets/circularindicator.dart';
import 'package:nothing/widgets/overallprogresscontainer.dart';
import 'package:nothing/widgets/taskgrid.dart';
import 'package:nothing/widgets/taskgridgenerator.dart';

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
        description:
            "Learn one data structure everday and writes its implementation",
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
        deadline: DateTime(9, 10, 9),
        history: []),
    Task(
        name: "Codewars",
        description: "Solve problems on codewars",
        todays_status: false,
        deadline: DateTime(9, 12, 9),
        history: []),
    Task(
        name: "Codewars",
        description: "Solve problems on codewars",
        todays_status: false,
        deadline: DateTime(9, 13, 9),
        history: []),
  ];

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  TaskGridGenerator tg = TaskGridGenerator();
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
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar.large(
            floating: false,
            forceElevated: true,
            backgroundColor: Colors.transparent,
            collapsedHeight: 137,
            leadingWidth: 343,
            pinned: true,
            flexibleSpace: OverallProgress(
                theme: widget.theme,
                font: widget.font,
                currentuser: currentuser),
          ),
          SliverPadding(padding: EdgeInsets.only(bottom: 26)),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverGrid(
                delegate: SliverChildListDelegate(
                    tg.generateGrid(currentuser, widget.theme, widget.font)),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.66)),
          )
        ]));
  }
}

// Padding(
//   padding: EdgeInsets.only(top: 26),
//   child: TaskGrid(
//       theme: widget.theme,
//       font: widget.font,
//       currentuser: widget.currentuser),
// ),

// SliverToBoxAdapter(

//             child: OverallProgress(
//                 theme: widget.theme,
//                 font: widget.font,
//                 currentuser: currentuser),
//           ),
//           SliverPadding(padding: EdgeInsets.only(bottom: 26)),
//           TaskGrid(
//               theme: widget.theme, font: widget.font, currentuser: currentuser),
