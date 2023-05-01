import 'package:flutter/material.dart';
import 'package:inst/model/profiledata.dart';

class TabSec extends StatelessWidget {
  const TabSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 1, crossAxisSpacing: 1),
          itemCount: UsersData.users.length,
          itemBuilder: (context, index) {
            return ShowGrid(
              usergrid: UsersData.users[index],
            );
          }),
    );
  }
}



class ShowGrid extends StatelessWidget {
  final UserProfile usergrid;

  const ShowGrid({super.key, required this.usergrid});
  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.cover,
      height: 200,
      width: 200,
      image: AssetImage(usergrid.url),
    );
  }
}