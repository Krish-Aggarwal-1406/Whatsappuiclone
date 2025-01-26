import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';
class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit))
        ],
        title: Text(
          "Favourites",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body:Container(
        padding: EdgeInsets.only(left: 15),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            GreyText(text: "Use the pencil to reorder how your lists appear in the Chats tab."),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerLeft,
              child: GreyText(text: "Included"),
            ),
            SizedBox(height: 15,),
            ListTile(
              title: WhiteText(text: "Add people or groups",fontSize: 17,),
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.add,color: Colors.white,),
              ),
            ),
            ListTile(
              title: WhiteText(text: "Discussion group for freshers",fontSize: 17,),
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.group,color: Colors.white,),
              ),
            ),
            GreyText(text: "You can edit favourites here or reorder how they appear on Calls tab"),

          ],
        ),
      ),
    );
  }
}
