import 'package:facebook_ui/sections/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: colorRed,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind?",
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }
}
