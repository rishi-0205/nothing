import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'package:nothing/screens/completedtask.dart';
import 'package:nothing/screens/dashboard.dart';
import 'package:nothing/screens/deletedtask.dart';
import 'package:nothing/screens/editprofile.dart';
import 'package:nothing/screens/login.dart';
import 'package:nothing/screens/profile.dart';
import 'package:nothing/screens/register.dart';
import 'package:nothing/screens/task.dart';
import 'package:nothing/widgets/taskadd.dart';

void main() {
  debugProfileBuildsEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: EditProfile(theme: darkmode(), font: FontFamily()));
  }
}
