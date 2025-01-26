import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../widgets/grey_text.dart';
import '../../widgets/white_text.dart';

class TransferDetailsPage extends StatelessWidget {
  const TransferDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text("Transfer Data", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Image.asset("assets/transferdetails.png"),
          ),
          Container(
            width: 300,
            child: WhiteText(
              text: "Transfer chat history to android phone",fontSize: 25,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: GreyText(
              text: "Transfer your chat history privately and have your most up to date messages without using google storage.Certain device permissions are needed to connect to your new device.",
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize:Size(300, 40) ,
              backgroundColor: Colors.green, // Button background color
              foregroundColor: Color(0xff0B1014), // Text color
            ),
            child: Text("Start"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();  // Goes back to previous page
            },
            style: ElevatedButton.styleFrom(
              minimumSize:Size(300, 40) ,
              backgroundColor: Colors.transparent,
              side: BorderSide(color: Colors.blueGrey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text("Cancel", style: TextStyle(color: Colors.green)),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
