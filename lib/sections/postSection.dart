import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/headerButton.dart';

class PostSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  PostSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          VerticalDivider(
            thickness: 0.8,
          ),
          buttonTwo,
          VerticalDivider(
            thickness: 0.8,
          ),
          buttonThree,
        ],
      ),
    );
  }
}
