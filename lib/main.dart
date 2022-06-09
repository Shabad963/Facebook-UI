import 'package:facebook_ui/sections/assets.dart';
import 'package:facebook_ui/sections/listTileWidget.dart';
import 'package:facebook_ui/sections/postSection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/sections/suggestionSection.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 0.8,
      color: Color.fromARGB(255, 204, 203, 203),
    );
    Widget thickDivider = Divider(
      thickness: 7,
      color: Color.fromARGB(255, 212, 211, 211),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 237, 237, 237),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {
                      print("Goto Search");
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
              Container(
                  margin: EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 237, 237),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      onPressed: () {
                        print("Goto Messages");
                      },
                      icon: const Icon(
                        Icons.message,
                        color: Colors.black,
                      ))),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          ListTileWidget(),
          thinDivider,
          PostSection(
            buttonOne: headerButton(
                buttonText: "Live",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("Go Live");
                },
                buttonColor: Colors.green),
            buttonTwo: headerButton(
                buttonText: "Photo",
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("Post Photo");
                },
                buttonColor: Colors.purple),
            buttonThree: headerButton(
                buttonText: "Room",
                buttonIcon: Icons.meeting_room,
                buttonAction: () {
                  print("Goto Room");
                },
                buttonColor: Colors.red),
          ),
          thickDivider,
          RoomSection(),
          thickDivider,
          StorySection(),
          thickDivider,
          PostCard(
            publishedAt: "5h",
            name: "Green",
            avatar: colorGreen,
            postImage: book,
            postTitle: "My New Desk Setup",
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1K",
            commentCount: "1k",
          ),
          thickDivider,
          PostCard(
            publishedAt: "10h",
            name: "Grey",
            avatar: colorGrey,
            postImage: tech,
            postTitle: "",
            showBlueTick: true,
            likeCount: "5k",
            shareCount: "2K",
            commentCount: "2k",
          ),
          thickDivider,
          PostCard(
            publishedAt: "15h",
            name: "White",
            avatar: colorWhite,
            postImage: flutter,
            postTitle: flutterpost,
            showBlueTick: true,
            likeCount: "8k",
            shareCount: "500",
            commentCount: "4k",
          ),
          thickDivider,
          SuggestionSection(),
          thickDivider,
          PostCard(
            publishedAt: "1 day ago",
            name: "Grey",
            avatar: colorGrey,
            postImage: btc,
            postTitle: btcpost,
            showBlueTick: false,
            likeCount: "7k",
            shareCount: "200",
            commentCount: "900",
          ),
          thickDivider,
          PostCard(
            publishedAt: "2 day ago",
            name: "Yellow",
            avatar: colorYellow,
            postImage: oneplus,
            postTitle: "Never Settle",
            showBlueTick: true,
            likeCount: "3k",
            shareCount: "789",
            commentCount: "1.5k",
          ),
        ],
      ),
    );
  }
}
