import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PasskeysPage extends StatelessWidget {
  const PasskeysPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrheight = MediaQuery.of(context).size.height;
    var scrwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the back button color here
        ),
        title: Text(
          'Passkeys',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(

        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: scrheight*.02),

            Image.asset("assets/passkeys.jpg",height: 150,),
            Text("Log in securely and\n protect your account",
                style: TextStyle(color: Colors.white, fontSize: 25)),
            SizedBox(height: scrheight*.02),

            Row(
              children: [
                Icon(Icons.shield, color: Colors.grey),
                SizedBox(width: 20),

                Text(
                    "Create a passkey for a secure,easy way\nto log in to your account",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: scrheight*.02),

            Row(
              children: [
                Icon(Icons.fingerprint, color: Colors.grey),
                SizedBox(width: 20),

                Text(
                    "Log into Whatsapp with your face,\nfingerprint or screen lock.",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: scrheight*.02),

            Row(
              children: [
                Icon(Icons.laptop,color: Colors.grey),
                SizedBox(width: 20),
                Text("Your passkey is stores safely in your\npassword manager.",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(height: scrheight*.4),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: Text("Create passkey",
                    style: TextStyle(color: Color(0xFF0B141B)))),
          ],
        ),
      ),
    );
  }
}
