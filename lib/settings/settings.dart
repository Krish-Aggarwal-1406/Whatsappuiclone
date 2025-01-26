
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/App_language.dart';
import 'package:whatsappui/settings/app_updates.dart';
import 'package:whatsappui/settings/avatar.dart';
import 'package:whatsappui/settings/chats/chats_settings.dart';
import 'package:whatsappui/settings/help/help.dart';
import 'package:whatsappui/settings/invite_friend.dart';
import 'package:whatsappui/settings/lists/lists.dart';
import 'package:whatsappui/settings/privacy/privacy.dart';
import 'package:whatsappui/settings/storage_and_data/storage_data.dart';

import 'Notifications.dart';
import 'account/account.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {

    List<data> currdata = [
      data(settings: 'Account', settingsubtitles: 'Security notifications, change number', icons: FaIcon(FontAwesomeIcons.key)),
      data(settings: 'Privacy', settingsubtitles: 'Block contacts, disappearing messages', icons: FaIcon(FontAwesomeIcons.lock)),
      data(settings: 'Avatar', settingsubtitles: 'Create.edit.profile photo', icons: FaIcon(FontAwesomeIcons.userPen)),
      data(settings: 'Lists', settingsubtitles: 'Manage people and groups', icons: FaIcon(FontAwesomeIcons.list)),
      data(settings: 'Chats', settingsubtitles: 'Theme, wallpaper, chat history', icons: FaIcon(FontAwesomeIcons.message)),
      data(settings: 'Notifications', settingsubtitles: 'Message, group & call tones', icons: FaIcon(FontAwesomeIcons.bell)),
      data(settings: 'Storage and data', settingsubtitles: 'Network usage, auto download', icons: FaIcon(FontAwesomeIcons.chartPie)),
      data(settings: 'App language', settingsubtitles: 'English(device\'s language)', icons: FaIcon(FontAwesomeIcons.globe)),
      data(settings: 'Help', settingsubtitles: 'Help centre, call us, privacy policy', icons: FaIcon(FontAwesomeIcons.circleQuestion)),
      data(settings: 'Invite a friend',  icons: FaIcon(FontAwesomeIcons.users)),
      data(settings: 'App updates',  icons: FaIcon(FontAwesomeIcons.mobile)),
      data(settings: 'Open Instagram',  icons: FaIcon(FontAwesomeIcons.instagram)),
      data(settings: 'Open Facebook',  icons: FaIcon(FontAwesomeIcons.facebook)),
      data(settings: 'Open Threads',  icons: FaIcon(FontAwesomeIcons.threads)),
    ];

int startindex=11;
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView( // Make the whole body scrollable
        child: Column(
          children: [
            // Profile Section
            ListTile(
              title: Text(
                'Krish Aggarwal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              leading: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage('assets/fitness.jpg'), // Ensure this path is correct
              ),
              subtitle: Text('Hey there, I am using WhatsApp!', style: TextStyle(color: Colors.grey, fontSize: 12)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.qr_code_sharp, color: Colors.green),
                  SizedBox(width: 7),
                  Icon(Icons.add_circle_outline, color: Colors.green),
                ],
              ),
              onTap: () {
                // Handle the tap event (optional)
              },
            ),
            Container(margin: EdgeInsets.only(top: 5),
              height: 0.3,decoration: BoxDecoration(color: Colors.grey),),
            // Settings List
            ListView.builder(

              itemCount: 11,
              shrinkWrap: true, // Makes the list use only as much space as needed
              physics: NeverScrollableScrollPhysics(), // Disables scroll for this ListView so parent scrolls
              itemBuilder: (context, index) {
                bool applypadding=index==9||index==10;
                 return Padding(
                   padding:EdgeInsets.only(left: 15),
                   child: ListTile(
                    title: Padding(
                      padding:applypadding?EdgeInsets.only(top: 17):EdgeInsets.zero,
                      child: Text(
                        currdata[index].settings,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    leading: FaIcon(
                      currdata[index].icons.icon,
                      color: Colors.grey,
                      size: 20,
                    ),
                    subtitle: Text(
                      currdata[index].settingsubtitles,
                      style: TextStyle(color: Colors.grey),
                    ),
                     onTap: (){
                      switch(currdata[index].settings){
                        case 'Account':
                         Get.to(AccountPage());
                          break;
                        case 'Privacy':
                          Get.to(PrivacyPage());
                          break;
                        case 'Avatar':Get.to(AvatarPage());
                          break;
                        case 'Lists':Get.to(ListsPage());
                          break;
                        case 'Chats':Get.to(ChatsSettingsPage());
                          break;
                        case 'Notifications':Get.to(NotificationsPage());
                          break;
                        case 'Storage and data':Get.to(StorageAndData());
                          break;
                        case 'App language':Get.to(AppLanguage());
                          break;
                        case 'Help':Get.to(HelpPage());
                          break;
                        case 'Invite a friend':Get.to(InviteFriendPage());
                          break;
                        case 'App updates':Get.to(AppUpdatePage());
                          break;
                        case 'Open Instagram':
                          break;
                        case 'Open Facebook':
                          break;
                        case 'Open Threads':
                          break;
                      }
                     },
                                   ),
                 );
              }
            ),
            Align(alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.only(left: 15),
                child: Text('Also from Meta',
                  style: TextStyle(color: Colors.grey,fontSize: 15),),
              ),
            ),
            ListView.builder(itemCount: currdata.length-startindex,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              int dataindex=startindex+index;
                return ListTile(leading: FaIcon(currdata[dataindex].icons.icon,color: Colors.grey,),
                  title: Text(currdata[dataindex].settings,style: TextStyle(color: Colors.white),),);
            })
          ],
        ),
      ),
    );
  }
}

class data {
  final String settings;
  final String settingsubtitles;
  final FaIcon icons;

  data({
    required this.settings,
    required this.icons,
    this.settingsubtitles = '',
  });
}

