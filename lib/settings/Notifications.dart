import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/toggle_button.dart';
import 'package:whatsappui/widgets/white_text.dart';
import 'package:whatsappui/widgets/grey_text.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    bool conversationTones = true;
    bool reminders = true;
    bool highPriority = true;
    bool reactionNotification = true;
    bool reactions = true;

    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: WhiteText(text: 'Notifications'),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Divider(
              thickness: 0.5,
              color: Colors.grey, // Changed to Colors.grey
            ),
            ListTile(
              title: WhiteText(
                text: 'Conversation tones',
              ),
              trailing: ToggleSwitch(initialValue: conversationTones),
              subtitle: GreyText(
                text: 'Play sounds for incoming and outgoing messages',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Reminders',
              ),
              trailing: ToggleSwitch(initialValue: reminders),
              subtitle: GreyText(
                text: 'Get occasional reminders about messages or status updates you haven\'t seen',
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey, // Changed to Colors.grey
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: GreyText(
                text: 'Messages',
              ),
            ),
            ListTile(
              title: WhiteText(
                text: 'Notification tone',
              ),
              subtitle: GreyText(
                text: 'Silent',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Vibrate',
              ),
              subtitle: GreyText(
                text: 'Default',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Light',
              ),
              subtitle: GreyText(
                text: 'White',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Use high priority notifications',
              ),
              trailing: ToggleSwitch(initialValue: highPriority),
              subtitle: GreyText(
                text: 'Show previews of notifications at the top of the screen',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Reaction notifications',
              ),
              trailing: ToggleSwitch(initialValue: reactionNotification),
              subtitle: GreyText(
                text: 'Show notifications for reactions to messages you send',
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey, // Changed to Colors.grey
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: GreyText(
                text: 'Groups',
              ),
            ),
            ListTile(
              title: WhiteText(
                text: 'Notification tone',
              ),
              subtitle: GreyText(
                text: 'Silent',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Vibrate',
              ),
              subtitle: GreyText(
                text: 'Default',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Light',
              ),
              subtitle: GreyText(
                text: 'White',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Use high priority notifications',
              ),
              trailing: ToggleSwitch(initialValue: highPriority),
              subtitle: GreyText(
                text: 'Show previews of notifications at the top of the screen',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Reaction notifications',
              ),
              trailing: ToggleSwitch(initialValue: reactionNotification),
              subtitle: GreyText(
                text: 'Show notifications for reactions to messages you send',
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey, // Changed to Colors.grey
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: GreyText(
                text: 'Calls',
              ),
            ),
            ListTile(
              title: WhiteText(
                text: 'Ringtone',
              ),
              subtitle: GreyText(
                text: 'Default ringtone',
              ),
              onTap: () {},
            ),
            ListTile(
              title: WhiteText(
                text: 'Vibrate',
              ),
              subtitle: GreyText(
                text: 'Default',
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey, // Changed to Colors.grey
            ),
            Padding(
              padding: EdgeInsets.only(left: srcwidth * 0.07, top: srcwidth * 0.04),
              child: GreyText(
                text: 'Status',
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: WhiteText(
                  text: 'Reactions',
                ),
              ),
              trailing: ToggleSwitch(initialValue: reactions),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 37),
                child: GreyText(
                  text: 'Show notifications when you get likes on a status',
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
