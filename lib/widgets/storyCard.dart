import 'package:facebook_ui/sections/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryStatus = false,
    this.displayBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              left: 5,
              top: 5,
              child: createStoryStatus
                  ? Container(
                      margin: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          onPressed: () {
                            print("Create new story");
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                          )),
                    )
                  : Avatar(
                      width: 35,
                      height: 35,
                      displayImage: avatar,
                      displayStatus: false,
                      displayBorder: displayBorder,
                    )),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "N/A",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
