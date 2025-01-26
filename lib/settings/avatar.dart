import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/white_text.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Avatar",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/avatar.png',
                height: 300,
              ),
              SizedBox(height: 10),
              WhiteText(text: "Say more with Avatars now on WhatsApp."),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: Text("Create your Avatar",style: TextStyle(color: Color(0xFF0B141B)),),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Learn more",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
