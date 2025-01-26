import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/white_text.dart';

class PrivacyCheckupPage extends StatelessWidget {
  const PrivacyCheckupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy checkup",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/privacycheckup.png',
                      height: 120,
                    ),
                    SizedBox(height: 10),
                    WhiteText(text: "Your privacy matters"),
                    WhiteText(text: "Control your privacy settings and set up WhatsApp just the way you want it."),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: WhiteText(text: "Choose who can contact you"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle tap here
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: WhiteText(text: "Control your personal info"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle tap here
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: WhiteText(text: "Add more privacy to your chats"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle tap here
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: WhiteText(text: "Add more protection to your account"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle tap here
              },
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Go to Settings > Privacy to view more privacy settings.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
