import 'package:facebook_ui/sections/assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: colorRed,
            story: colorRed,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Green",
            avatar: colorGreen,
            story: book,
          ),
          StoryCard(
            labelText: "White",
            avatar: colorWhite,
            story: btc,
          ),
          StoryCard(
            labelText: "Yellow",
            avatar: colorYellow,
            story: oneplus,
          ),
          StoryCard(
            labelText: "Grey",
            avatar: colorGrey,
            story: flutter,
          ),
          StoryCard(
            labelText: "Red",
            avatar: colorRed,
            story: tech,
          ),
        ],
      ),
    );
  }
}
