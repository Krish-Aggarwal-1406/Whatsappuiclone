import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EmailAddressPage extends StatelessWidget {
  const EmailAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height;
    double scrWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Email Address',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        backgroundColor: Color(0xFF0B141B),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: scrWidth * 0.05, vertical: scrHeight * 0.03),
        decoration: BoxDecoration(
          color: Color(0xFF0B141B),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.mail,
                size: scrHeight * 0.1,
                color: Colors.green,
              ),
            ),
            SizedBox(height: scrHeight * 0.03),
            Center(
              child: Text(
                "Add email to protect your\naccount",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: scrHeight * 0.05),
            Row(
              children: [
                Icon(Icons.shield, color: Colors.grey),
                SizedBox(width: scrWidth * 0.03),
                Expanded(
                  child: Text(
                    "Verify your account, even without SMS",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: scrHeight * 0.02),
            Row(
              children: [
                Icon(Icons.contact_support, color: Colors.grey),
                SizedBox(width: scrWidth * 0.03),
                Expanded(
                  child: Text(
                    "Email helps us reach you in case of\nsecurity or support issues.",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: scrHeight * 0.02),
            Row(
              children: [
                Icon(Icons.lock, color: Colors.grey),
                SizedBox(width: scrWidth * 0.03),
                Expanded(
                  child: Text(
                    "Your email address won't be visible to\nothers.",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: scrHeight * 0.02),
            Center(
              child: Text(
                "Learn more",
                style: TextStyle(color: Colors.green, fontSize: 14),
              ),
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fixedSize: Size(scrWidth * 0.8, scrHeight * 0.01),
                ),
                onPressed: () {},
                child: Text(
                  "Add email",
                  style: TextStyle(color: Color(0xFF0B141B)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
