import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StarredMessages extends StatelessWidget {
  const StarredMessages({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the back button color here
        ),
        title: Text(
          'Starred Messages',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/starred_messages.png",
              height: scrheight * .12,
            ),
            Text(
              "Tap and hold on any message \nin any chat to star it,so you\n can easily find it later",
              style: TextStyle(color: Colors.grey,fontSize:18 ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
