import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/toggle_button.dart';

import '../../widgets/grey_text.dart';
import '../../widgets/white_text.dart';

class ChatBackupPage extends StatelessWidget {
  const ChatBackupPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool includeVideos=true;
    bool backupCellular=false;


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Chat Backup",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WhiteText(
              text: "Backup settings",
            ),
            GreyText(
              text: " Back up your chats and media to your Google account's storage.You can restore them on a new phone after you download whatsapp on it",
            ),
            SizedBox(
              height: 10,
            ),
            WhiteText(
              text: "Last Backup: 3:53 am",
            ),
            WhiteText(
              text: "Size: 2.9 GB",
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Color(0xff0B1014),
              ),
              child: Text("Back up"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Manage Google Storage",
              style: TextStyle(color: Colors.green),
            ),
            GreyText(
              text: "3.3 GB of 15 GB used",
            ),
            SizedBox(
              height: 20,
            ),
           ListTile(
             title: WhiteText(text: "Google account"),
             subtitle: GreyText(text: "abc123gmail.com"),
           ),
            ListTile(
              title: WhiteText(text: "Frequency"),
              subtitle: GreyText(text: "Daily"),
            ),
            ListTile(
              title: WhiteText(text: "Include videos"),
              subtitle: GreyText(text: "536 MB backed up"),
              trailing: ToggleSwitch(initialValue: includeVideos),
            ),
            ListTile(
              title: WhiteText(text: "back up using cellular"),
              trailing: ToggleSwitch(initialValue: backupCellular),

            ),
            GreyText(text: "End to end encryption"),
            GreyText(text: "For added security,you can protect you backup with end-to-end encryption"),
            ListTile(
              leading: Icon(Icons.lock_outline,color: Colors.grey,),
              title: WhiteText(text: "End-to-end encrypted backup"),
              subtitle: GreyText(text: "Off"),
            ),

          ],
        ),
      ),
    );
  }
}
