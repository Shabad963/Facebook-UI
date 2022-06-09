import 'package:facebook_ui/sections/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          Avatar(
            displayImage: colorGrey,
            displayStatus: true,
          ),
          Avatar(
            displayImage: colorGreen,
            displayStatus: true,
          ),
          Avatar(
            displayImage: colorWhite,
            displayStatus: true,
          ),
          Avatar(
            displayImage: colorYellow,
            displayStatus: true,
          ),
          Avatar(
            displayImage: colorGrey,
            displayStatus: true,
          ),
          Avatar(
            displayImage: colorGreen,
            displayStatus: true,
          ),
          Avatar(
            displayImage: colorWhite,
            displayStatus: true,
          ),
          Avatar(
            displayImage: colorYellow,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ))),
          onPressed: () {
            print("Room Created");
          },
          icon: Icon(
            Icons.video_call,
            color: Colors.purple,
          ),
          label: Text(
            "Create \n Room",
          )),
    );
  }
}
