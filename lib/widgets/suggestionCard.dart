import 'package:facebook_ui/sections/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;
  SuggestionCard({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeFriend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          SuggestionDetails(),
        ],
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return FlatButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        onPressed: buttonAction,
        child: Text(
          buttonText,
          style: TextStyle(color: buttonTextColor),
        ));
  }

  Widget SuggestionDetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 237, 234, 234),
              border: Border.all(color: Color.fromARGB(255, 197, 195, 195)),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )),
          width: 1,
          height: 140,
          child: Column(
            children: [
              ListTile(
                title: Text(name != null ? name : ""),
                subtitle: Text(mutualFriends != null ? mutualFriends : ""),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction: () {
                          print(addFriend);
                        },
                        buttonIcon: Icons.account_box,
                        buttonColor: Colors.blue,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttonText: "Add Friend"),
                    blankButton(
                        buttonAction: () {
                          print(removeFriend);
                        },
                        buttonText: "Remove",
                        buttonColor: Color.fromARGB(255, 193, 193, 193),
                        buttonTextColor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return FlatButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      color: buttonColor,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      onPressed: buttonAction,
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: avatar != null
            ? Image.asset(
                avatar,
                height: 250,
                fit: BoxFit.cover,
              )
            : SizedBox(),
      ),
    );
  }
}
