import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:inst/model/profiledata.dart';
import 'package:inst/screen/showitem.dart';
import 'package:inst/screen/tabsec.dart';
import 'package:inst/utils/mytheme.dart';

class Userprofile extends StatelessWidget {
  const Userprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("Zain Raza",),
            Icon(Icons.verified,color: Colors.blue,)
          ],
        ),
        actions: [
          Icon(Icons.add),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
     body: DefaultTabController(
        length: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 43,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          radius: 42,
                          backgroundImage: AssetImage('assets/userimg.jpg'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "132",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "10001",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Follower",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              "1690",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Zain Raza \nFlutter Developer",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.link),
                  SizedBox(
                    width: 10,
                  ),
                
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20)),
                height: 40,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Professional Dashboard",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20)),
                      height: 40,
                      child: Center(
                        child: Text(
                          "Edit Profile ",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20)),
                      height: 40,
                      child: Center(
                        child: Text(
                          "Share Profile",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20)),
                      height: 40,
                      child: Center(
                        child: Text(
                          "Contact ",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: UsersData.users.length,
                  itemBuilder: (context, index) {
                    return ShowItem(
                      userStory: UsersData.users[index],
                    );
                  }),
            ),
            TabBar(tabs: [
              Icon(Icons.dashboard),
              Icon(Icons.video_call),
              Icon(Icons.shop),
              Icon(Icons.account_box),
            ]),
            Expanded(
              child: TabBarView(children: [
                TabSec(),
                TabSec(),
                TabSec(),
                TabSec(),
              ]),
            )
          ],
        ),
      ),   );
  }
}