import 'package:facebook_ui/sections/assets.dart';
import 'package:facebook_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(children: [
        ListTile(
          title: Text("People You May Know"),
          trailing: IconButton(
              onPressed: () {
                print("More suggestions");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              )),
        ),
        Container(
          height: 390,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SuggestionCard(
                name: "Mark Zuck",
                avatar: mark1,
                mutualFriends: "1 mutual friend",
                addFriend: () {
                  print("Request Friendship");
                },
                removeFriend: () {
                  print("Remove this person");
                },
              ),
              SuggestionCard(
                name: "Risk Taker",
                avatar: risk,
                mutualFriends: "5 mutual friend",
                addFriend: () {
                  print("Request Friendship");
                },
                removeFriend: () {
                  print("Remove this person");
                },
              ),
              SuggestionCard(
                name: "Mark Zucker",
                avatar: mark2,
                mutualFriends: "2 mutual friend",
                addFriend: () {
                  print("Request Friendship");
                },
                removeFriend: () {
                  print("Remove this person");
                },
              ),
              SuggestionCard(
                name: "Todays Quote",
                avatar: today,
                mutualFriends: "5 mutual friend",
                addFriend: () {
                  print("Request Friendship");
                },
                removeFriend: () {
                  print("Remove this person");
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
