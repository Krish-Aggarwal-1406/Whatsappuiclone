import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';
class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.delete))
        ],
        title: Text(
          "Groups",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body:Container(
        padding: EdgeInsets.only(left: 15),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            GreyText(text: "This list automatically updates for you with all group chats"),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerLeft,
              child: GreyText(text: "Included"),
            ),
            SizedBox(height: 15,),
            ListTile(
              title: WhiteText(text: "Group chats",fontSize: 17,),
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.group,color: Colors.black,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
