import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/lists/groups.dart';
import 'package:whatsappui/settings/lists/unread.dart';
import 'package:whatsappui/widgets/white_text.dart';
import 'package:whatsappui/widgets/grey_text.dart';

import 'favourites.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit))
        ],
        title: Text(
          "Lists",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/lists.png',
                    height: 120,
                  ),
                  SizedBox(height: 10),
                  GreyText(
                    text: "Any list you create becomes a filter at the top of your Chats tab.",
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text("+ Create a custom list",style: TextStyle(color: Color(0xFF0B141B)),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.message,color: Colors.grey),
              title: WhiteText(text: "Unread"),
              subtitle: GreyText(text: "Preset"),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey),
              onTap: () {
                Get.to(UnreadPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite,color: Colors.grey,),
              title: WhiteText(
                text: "Favourites ",
              ),
              subtitle: GreyText(text: "Discussion group for freshers"),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey),
              onTap: () {
                Get.to(FavouritesPage());
              },
            ),
            ListTile(
              leading: Icon(Icons.group,color: Colors.grey),
              title: WhiteText(text: "Groups"),
              subtitle: GreyText(text: "Preset"),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey),
              onTap: () {
                Get.to(GroupsPage());
              },
            ),
            SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft,
                child: GreyText(text: "Available presets")),
            SizedBox(height: 10,),
            GreyText(
              text:
              "If you remove a preset list like Unread or Groups, it will become available here.",
            ),
          ],
        ),
      ),
    );
  }
}
