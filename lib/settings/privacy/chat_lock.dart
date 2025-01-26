import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';

class ChatLock extends StatelessWidget {
  const ChatLock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.person_add_alt_1_outlined),
            onPressed: () {},
          ),
        ],
        title: WhiteText(
          text: "Chat Lock",
          fontSize: 20, // Only this text has a custom font size
        ),
        backgroundColor: Color(0xFF0B141B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/chatlock.png",
                height: 100,
              ),
            ),
            WhiteText(
              text: "Chat lock keeps your chats locked and hidden",
              fontSize: 20,
            ),
            SizedBox(height: 20),
            GreyText(
              text:
              "If you have locked chats, pull down on your chat list or type your secret code in the search bar to find them.",
            ),
            Text(
              "Learn more",style: TextStyle(color: Colors.blue),
            ),
            Divider(color: Colors.grey),
            WhiteText(
              text: "Unlock and clear locked chats",
            ),
            GreyText(
              text:
              "If you forgot your secret code, you can clear it. This will also unlock and clear messages, photos, and videos in locked chats.",
            ),
          ],
        ),
      ),
    );
  }
}
