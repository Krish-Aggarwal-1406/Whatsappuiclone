import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsappui/settings/help/app_info.dart';
import 'package:whatsappui/settings/help/channel_report.dart';

import 'help_center.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {

    List<data> currdata = [
      data(settings: 'Help centre', icons: FaIcon(FontAwesomeIcons.circleQuestion)),
      data(settings: 'Terms and privacy policy', icons: FaIcon(FontAwesomeIcons.file)),
      data(settings: 'Channel reports', icons: FaIcon(FontAwesomeIcons.circleExclamation)),
      data(settings: 'App info', icons: FaIcon(FontAwesomeIcons.circleInfo)),
    ];

    int startindex=11;
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
          'Account',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 28,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            ListView.builder(
                itemCount: currdata.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  bool applypadding = index == 9 || index == 10;
                  return Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: ListTile(
                      onTap: () {
                        switch (currdata[index].settings) {
                          case 'Help centre':
                           Get.to(HelpCenterPage());
                            break;
                          case 'Terms and privacy policy':
                            break;
                          case 'Channel reports':Get.to(ChannelReport());
                            break;
                          case 'App info':Get.to(AppInfoPage());
                            break;
                        }
                      },
                      title: Padding(
                        padding: applypadding ? EdgeInsets.only(top: 17) : EdgeInsets.zero,
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
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}

class data {
  final String settings;
  final FaIcon icons;

  data({
    required this.settings,
    required this.icons,
  });
}
