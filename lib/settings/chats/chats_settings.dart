import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/chats/chat_backup.dart';
import 'package:whatsappui/settings/chats/transfer_details.dart';
import 'package:whatsappui/widgets/white_text.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/toggle_button.dart';

import 'chat_history.dart';

class ChatsSettingsPage extends StatefulWidget {
  const ChatsSettingsPage({super.key});

  @override
  State<ChatsSettingsPage> createState() => _ChatsSettingsPageState();
}

class _ChatsSettingsPageState extends State<ChatsSettingsPage> {
  bool enterIsSend = false;
  bool mediaVisibility = true;
  bool voiceMessageTranscripts = false;
  bool keepChatsArchived = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: WhiteText(text: "Theme"),
              subtitle: GreyText(text: "Dark"),
              leading: Icon(Icons.brightness_6,color: Colors.grey,),
            ),
            ListTile(
              title: WhiteText(text: "Wallpaper"),
              leading: Icon(Icons.wallpaper,color: Colors.grey,),
            ),
            GreyText(text: "Chat Settings"),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  ListTile(
                    title: WhiteText(text: "Enter is send"),
                    subtitle: GreyText(text: "Enter key will send your message"),
                    trailing: ToggleSwitch(initialValue: enterIsSend),
                  ),
                  ListTile(
                    title: WhiteText(text: "Media visibility"),
                    subtitle: GreyText(text: "Show newly downloaded media in your device's gallery"),
                    trailing: ToggleSwitch(initialValue: mediaVisibility),
                  ),
                  ListTile(
                    title: WhiteText(text: "Font size"),
                    subtitle: GreyText(text: "Medium"),
                  ),
                  ListTile(
                    title: WhiteText(text: "Voice message transcripts"),
                    subtitle: GreyText(text: "Read new voice messages"),
                    trailing: ToggleSwitch(initialValue: voiceMessageTranscripts),
                  ),
                ],
              ),
            ),
            GreyText(text: "Archived chats"),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: ListTile(
                title: WhiteText(text: "Keep chats archived"),
                subtitle: GreyText(text: "Archived chats will remain archived when you receive a new message"),
                trailing: ToggleSwitch(initialValue: keepChatsArchived),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(ChatBackupPage());
              },
              title: WhiteText(text: "Chat backup"),
              leading: Icon(Icons.backup_outlined,color: Colors.grey,),
            ),
            ListTile(
              onTap: (){
                Get.to(TransferDetailsPage());
              },
              title: WhiteText(text: "Transfer details"),
              leading: Icon(Icons.send_to_mobile,color: Colors.grey,),
            ),
            ListTile(
              onTap: (){
                Get.to(ChatHistoryPage());
              },
              title: WhiteText(text: "Chat history"),
              leading: Icon(Icons.restore,color: Colors.grey,),
            ),
          ],
        ),
      ),
    );
  }
}


