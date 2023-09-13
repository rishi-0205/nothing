import 'package:flutter/material.dart';
import 'package:nothing/assets/const/font.dart';
import 'package:nothing/assets/const/theme.dart';
import 'dart:math';

class CircularIndicator extends StatefulWidget {
  CircularIndicator(
      {super.key,
      required this.font,
      required this.progress,
      required this.theme});
  darkmode theme;
  FontFamily font;
  double progress;
  @override
  State<CircularIndicator> createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi),
          child: SizedBox(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(
              backgroundColor: widget.theme.progressempty,
              color: widget.theme.progressfill,
              value: widget.progress,
              strokeWidth: 8,
            ),
          ),
        ),
        Text(
          (widget.progress * 100).toString() + "%",
          style: widget.font.getPromptTextStyle(
              color: widget.theme.textcolor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0),
        ),
      ],
    );
  }
}
