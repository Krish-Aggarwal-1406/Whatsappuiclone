import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BlockedContacts extends StatelessWidget {
  const BlockedContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.person_add_alt_1_outlined),
            onPressed: () {
            },
          ),
        ],
        title: Text(
          "Blocked Contacts",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body:Container(
        child:
        Column(
          children: [
            Text("Contacts",style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/chatbot-removebg-preview.png"),
              ),
              title: Text("+91 123456789",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/gaming.jpg"),
              ),
              title: Text("+91 256487913",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/cooking.jpg"),
              ),
              title: Text("+91 652134897",style: TextStyle(color: Colors.white),),
            ),
            Text("Blocked contacts will no longer be able to call you or send you messages",style: TextStyle(color: Colors.grey),),
          ],
        ),
      ) ,
    );
  }
}
