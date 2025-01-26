import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ChangeNumberPage extends StatelessWidget {
  const ChangeNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrHeight = MediaQuery.of(context).size.height;
    var scrWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Change number',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: scrHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: scrHeight * 0.05),
            Image.asset("assets/changenumber.jpg", width: scrWidth * 0.6),
            SizedBox(height: scrHeight * 0.02),
            Text(
              "Changing your phone number will migrate your account info, groups and settings.",
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: scrHeight * 0.02),
            Text(
              "Before proceeding, please confirm that you are\nable to receive SMS or calls at your new number.",
              style: TextStyle(color: Colors.grey, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: scrHeight * 0.02),
            Text(
              "If you have both a new phone and a new number,\nfirst change your number on your old phone.",
              style: TextStyle(color: Colors.grey, fontSize: 14),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: scrHeight * 0.45),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Text(
                "Next",
                style: TextStyle(color: Color(0xFF0B141B)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
