import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/white_text.dart';

class ChatHistoryPage extends StatelessWidget {
  const ChatHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
            icon: Icon(Icons.arrow_back, color: Colors.white,)
        ),
        title: WhiteText(text: "Chat History"),  // Changed title to WhiteText
        backgroundColor: Color(0xff0B1014),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.import_export, color: Colors.grey),  // Icon color set to grey
            title: WhiteText(text: "Export Chat"),  // Title changed to WhiteText
          ),
          ListTile(
            leading: Icon(Icons.archive_outlined, color: Colors.grey),  // Icon color set to grey
            title: WhiteText(text: "Archive Chat"),  // Title changed to WhiteText
          ),
          ListTile(
            leading: Icon(Icons.not_interested, color: Colors.grey),  // Icon color set to grey
            title: WhiteText(text: "Clear all Chat"),  // Title changed to WhiteText
          ),
          ListTile(
            leading: Icon(Icons.delete_outline, color: Colors.grey),  // Icon color set to grey
            title: WhiteText(text: "Delete all Chat"),  // Title changed to WhiteText
          ),
        ],
      ),
    );
  }
}
