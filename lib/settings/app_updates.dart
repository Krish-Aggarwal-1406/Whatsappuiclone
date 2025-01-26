import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';

import '../widgets/toggle_button.dart';

class AppUpdatePage extends StatefulWidget {
  const AppUpdatePage({super.key});

  @override
  State<AppUpdatePage> createState() => _AppUpdatePageState();
}

class _AppUpdatePageState extends State<AppUpdatePage> {
  bool autoUpdate = true;
  bool updateOverAnyNetwork = false;
  bool notifyUpdates = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WhiteText(text: "App update settings",fontSize: 20,),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          WhiteText(
            text: "App updates",
          ),
          ListTile(
            title: WhiteText(text: "Auto update whatsapp"),
            subtitle: GreyText(text: "Automatically download app updates"),
            trailing: ToggleSwitch(
              initialValue: autoUpdate,
            ),
          ),
          ListTile(
            subtitle: GreyText(text: "Download updates using mobile data when Wi Fi is not available. Data charges apply"),
            title: WhiteText(text: "Allow updates over any network"),
            trailing: ToggleSwitch(
              initialValue: updateOverAnyNetwork,
            ),
          ),
          Divider(),
          WhiteText(
            text: "Notifications",
          ),
          ListTile(
            subtitle: GreyText(text: "Get Notified when updates are available"),
            title: WhiteText(text: "Whatsapp update available"),
            trailing: ToggleSwitch(
              initialValue: notifyUpdates,
            ),
          ),
        ],
      ),
    );
  }
}
