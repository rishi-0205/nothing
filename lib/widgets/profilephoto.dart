import 'package:flutter/material.dart';

class ProfilePhoto extends StatefulWidget {
  ProfilePhoto({super.key});
  List<String> avatars = [
    'lib/assets/avatars/red.png',
    'lib/assets/avatars/blue.png',
    'lib/assets/avatars/green.png',
    'lib/assets/avatars/purple.png',
    'lib/assets/avatars/yellow.png',
  ];

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: AssetImage(widget.avatars[0]),
      radius: 90,
    );
  }
}
