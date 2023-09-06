import 'package:nothing/model/DaysCompleted.dart';

class Task {
  Task(
      {this.name = "",
      this.description = "",
      this.percentage = 0,
      required this.deadline,
      this.todays_status = false,
      this.deleted = false,
      this.completed = false,
      required this.history});

  String name;
  String description;
  int percentage;
  DateTime deadline = DateTime(0, 0, 0);
  bool todays_status;
  bool deleted;
  bool completed;
  List<DaysCompleted> history = [];
}
