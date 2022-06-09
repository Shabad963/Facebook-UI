import 'package:facebook_ui/sections/assets.dart';
import 'package:facebook_ui/sections/postSection.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postImage,
    required this.postTitle,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 0.8,
            color: Color.fromARGB(255, 192, 189, 189),
          ),
          PostSection(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: () {
                  print("Like this post");
                },
                buttonColor: Color.fromARGB(255, 124, 124, 124)),
            buttonTwo: headerButton(
                buttonText: "Comment",
                buttonIcon: Icons.comment,
                buttonAction: () {
                  print("Comment this post");
                },
                buttonColor: Color.fromARGB(255, 124, 124, 124)),
            buttonThree: headerButton(
                buttonText: "Share",
                buttonIcon: Icons.share,
                buttonAction: () {
                  print("Share this post");
                },
                buttonColor: Color.fromARGB(255, 124, 124, 124)),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              displayText(label: likeCount),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              displayText(label: commentCount),
              SizedBox(width: 5),
              displayText(label: "Comments"),
              SizedBox(
                width: 10,
              ),
              displayText(label: shareCount),
              SizedBox(width: 5),
              displayText(label: "Shares"),
              SizedBox(width: 10),
              Avatar(
                width: 25,
                height: 25,
                displayImage: avatar,
                displayStatus: false,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ))
            ],
          ),
        )
      ]),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: Icon(
        Icons.more_horiz,
        color: Colors.grey[700],
      ),
    );
  }
}
