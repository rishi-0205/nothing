import 'package:nothing/model/Task.dart';

class User {
  User({
    this.email = "",
    this.username = "",
    this.goal = "",
    required this.deadline,
    this.avatar = 0,
    this.overallprogress = 0,
    required this.all_task,
  });
  String email;
  String username;
  String goal;
  DateTime deadline;
  int avatar;
  List<Task> all_task;
  double overallprogress;
}
