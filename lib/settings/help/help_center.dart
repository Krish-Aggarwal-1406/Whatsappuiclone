import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';

class HelpCenterPage extends StatelessWidget {
  final List<HelpTopic> helpTopics = [
    HelpTopic(icon: Icons.flag, title: "Get Started"),
    HelpTopic(icon: Icons.chat, title: "Chats"),
    HelpTopic(icon: Icons.store, title: "Connect with Businesses"),
    HelpTopic(icon: Icons.call, title: "Voice and Video Calls"),
    HelpTopic(icon: Icons.people, title: "Communities"),
    HelpTopic(icon: Icons.chat_bubble, title: "Channels"),
    HelpTopic(icon: Icons.lock, title: "Privacy, Safety, and Security"),
    HelpTopic(icon: Icons.account_circle, title: "Accounts and Account Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help Center',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Icon(FontAwesomeIcons.whatsapp, color: Colors.green, size: 60),
                  SizedBox(height: 10),
                  Text(
                    "How can we help?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextField(
                      cursorColor: Colors.green, // Set the text cursor color to green
                      decoration: InputDecoration(
                        fillColor: Color(0xFF0B141B),
                        filled: true,
                        hintText: "Search Help Center",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide(color: Colors.green, width: 1), // Border color when focused
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(27),
                          borderSide: BorderSide(color: Colors.green, width: 1), // Border color when not focused
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Help topics",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: helpTopics.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    helpTopics[index].icon,
                    color: Colors.green,
                  ),
                  title: Text(
                    helpTopics[index].title,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
            GreyText(text: "Popular articles"),
            ListTile(
              title: WhiteText(text: "About 'Waiting for this message.This may take a while'"),
              leading: Icon(Icons.subject,color: Colors.grey,),
            ),
            ListTile(
              title: WhiteText(text: "About unofficial apps"),
              leading: Icon(Icons.subject,color: Colors.grey,),
            ),
            ListTile(
              title: WhiteText(text: "Get started"),
              leading: Icon(Icons.subject,color: Colors.grey,),
            ),
            ListTile(
              title: WhiteText(text: "About linked devices"),
              leading: Icon(Icons.subject,color: Colors.grey,),
            ),
            Text("Show more",style: TextStyle(color: Colors.green),),
            SizedBox(height: 100,)
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 150,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                SizedBox(width: 15),
                Icon(
                  Icons.contact_support,
                  color: Color(0xFF0B141B),
                  size: 26,
                ),
                Text(
                  "Contact us",
                  style: TextStyle(color: Color(0xFF0B141B), fontSize: 17),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HelpTopic {
  final IconData icon;
  final String title;

  HelpTopic({required this.icon, required this.title});
}
