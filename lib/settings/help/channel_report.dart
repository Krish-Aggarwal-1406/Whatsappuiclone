import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';
class ChannelReport extends StatelessWidget {
  const ChannelReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Channel report',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              WhiteText(text: "No reports",fontSize: 20,),
              GreyText(text: "If you report a channel you can see your report and the outcome here")
            ],
          ),
        ),
      ),
    );
  }
}
