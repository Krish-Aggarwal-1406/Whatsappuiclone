import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TwoStepVerificationPage extends StatelessWidget {
  const TwoStepVerificationPage({super.key});

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
          'Two Step Verification',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: scrHeight,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: scrHeight * 0.05),
              Image.asset("assets/2stepverification.jpg",height: scrHeight*.15,),
              SizedBox(height: scrHeight * 0.03),
              Text(
                "For extra security, turn on two-step verification, which requires a PIN when registering your phone number with WhatsApp again.",
                style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: scrHeight * 0.02),
              Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              SizedBox(height: scrHeight * 0.35),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {},
                child: Text(
                  "Turn on",
                  style: TextStyle(color: Color(0xFF0B141B)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
