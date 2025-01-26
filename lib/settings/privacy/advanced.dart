import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/white_text.dart';

import '../../widgets/toggle_button.dart';

class AdvancedPage extends StatefulWidget {
  const AdvancedPage({super.key});

  @override
  State<AdvancedPage> createState() => _AdvancedPageState();
}

class _AdvancedPageState extends State<AdvancedPage> {
  bool unknownAcc = false;
  bool ipAdd = false;
  bool linkPreview = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advanced",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            ListTile(
              title: WhiteText(text: "Block unknown account messages"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WhiteText(
                      text:
                      "To protect your account and improve device performance, WhatsApp will block messages from unknown accounts if they exceed a certain volume."),
                  Text(
                    "Learn more",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              trailing: ToggleSwitch(initialValue: unknownAcc),
            ),
            ListTile(
              title: WhiteText(text: "Protect IP address in calls"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WhiteText(
                      text:
                      "To make it harder for people to infer your location, calls on this device will be securely relayed through WhatsApp servers. This will reduce call quality."),
                  Text(
                    "Learn more",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              trailing: ToggleSwitch(initialValue: ipAdd),
            ),
            ListTile(
              title: WhiteText(text: "Disable link previews"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WhiteText(
                      text:
                      "To help protect your IP address from being inferred by third-party websites, previews for the links you share in chats will no longer be generated."),
                  Text(
                    "Learn more",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              trailing: ToggleSwitch(initialValue: linkPreview),
            )
          ],
        ),
      ),
    );
  }
}
