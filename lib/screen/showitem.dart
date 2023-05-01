import 'package:flutter/material.dart';
import 'package:inst/model/profiledata.dart';

class ShowItem extends StatelessWidget {
  final UserProfile userStory;

  const ShowItem({super.key, required this.userStory});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 04, vertical: 10),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(userStory.url),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 04, vertical: 10),
          child: Text(
            userStory.name,
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}