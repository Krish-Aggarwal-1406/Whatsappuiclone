import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/privacy/about.dart';
import 'package:whatsappui/settings/privacy/advanced.dart';
import 'package:whatsappui/settings/privacy/app_lock.dart';
import 'package:whatsappui/settings/privacy/blocked_contacts.dart';
import 'package:whatsappui/settings/privacy/chat_lock.dart';
import 'package:whatsappui/settings/privacy/default_message_timer.dart';
import 'package:whatsappui/settings/privacy/groups.dart';
import 'package:whatsappui/settings/privacy/last_seen.dart';
import 'package:whatsappui/settings/privacy/live_location.dart';
import 'package:whatsappui/settings/privacy/pofile_photo.dart';
import 'package:whatsappui/settings/privacy/privacy_calls.dart';
import 'package:whatsappui/settings/privacy/privacy_checkup.dart';
import 'package:whatsappui/settings/privacy/status.dart';
import 'package:whatsappui/widgets/toggle_button.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  bool readReceipts = false;
  bool cameraEffects = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF343A40),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.shield, color: Colors.green),
                    title: Text(
                      "Privacy Checkup",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Control your privacy and choose the right settings for you",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Start checkup",
                          style: TextStyle(color: Colors.green),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Who can see my personal info",
                    style: TextStyle(color: Colors.grey),
                  )),
              ListTile(
                onTap: () {
                  Get.to(LastSeen());
                },
                title: Text(
                  "Last seen and online",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Everyone",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(ProfilePhoto());
                },
                title: Text(
                  "Profile photo",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Everyone",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(AboutPage());
                },
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Everyone",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(StatusPage());
                },
                title: Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "Read receipts",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "If turned off,you won't send or recieve Read receipts.Read receipts are always sent forgroup chats.",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Switch(
                  value: readReceipts,
                  onChanged: (bool? value) {
                    setState(() {
                      readReceipts = value ?? false;
                    });
                  },
                  activeColor: Color(0xFF0B141B),
                  activeTrackColor: Colors.green,
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Disappearing messages",
                    style: TextStyle(color: Colors.grey),
                  )),
              ListTile(
                onTap:(){
                  Get.to(DefaultTimer());
                },
                title: Text(
                  "Default message timer",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Start new chats with disappearing messages set to your timer",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text("Off",
                  style: TextStyle(color: Colors.grey,fontSize: 15),),
              ),
              ListTile(
                onTap:(){
                  Get.to(GroupsPage());
                },
                title: Text(
                  "Groups",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Everyone",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(LiveLocation());
                },
                title: Text(
                  "Live location",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(PrivacyCalls());
                },
                title: Text(
                  "Calls",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Silence unknown calls",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(BlockedContacts());
                },
                title: Text(
                  "Blocked contacts",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "3",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(AppLock());
                },
                title: Text(
                  "App Lock",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Disabled",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(ChatLock());
                },
                title: Text(
                  "Chat lock",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text(
                  "Allow camera effects",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Use effects in camera and video calls",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: ToggleSwitch(initialValue: cameraEffects,)
              ),
              ListTile(
                onTap:(){
                  Get.to(AdvancedPage());
                },
                title: Text(
                  "Advanced",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Protect IP address in calls,Disable link previews",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                onTap:(){
                  Get.to(PrivacyCheckupPage());
                },
                title: Text(
                  "Privacy checkup",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Control your privacy and choose the right settings for you",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
