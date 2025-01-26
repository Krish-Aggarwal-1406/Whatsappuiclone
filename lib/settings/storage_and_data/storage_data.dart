import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/storage_and_data/proxy.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';
import 'package:whatsappui/widgets/toggle_button.dart';

class StorageAndData extends StatefulWidget {
  @override
  State<StorageAndData> createState() => _StorageAndDataState();
}

class _StorageAndDataState extends State<StorageAndData> {
  bool swtch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: WhiteText(text: 'Storage'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.folder_open_rounded, color: Colors.white70),
                title: WhiteText(text: "Manage Storage"),
                subtitle: GreyText(text: "5.6 GB"),
              ),
              Divider(color: Colors.white54, thickness: 0.2),
              ListTile(
                leading: Icon(Icons.network_check, color: Colors.white70),
                title: WhiteText(text: "Network Usage"),
                subtitle: GreyText(text: "2.5 GB sent. 1.6 GB received"),
              ),
              ListTile(
                leading: Text("   "),
                title: WhiteText(text: "Use Less Data for calls"),
                trailing: ToggleSwitch(initialValue: swtch),
              ),
              ListTile(
                leading: Text("   "),
                title: WhiteText(text: "Proxy"),
                subtitle: GreyText(text: "None"),
                onTap: () {
                  Get.to(ProxyPage());
                },
              ),
              Divider(color: Colors.white54, thickness: 0.2),
              ListTile(
                leading: Icon(Icons.hd_outlined, color: Colors.white70),
                title: WhiteText(text: "Media upload quality"),
                subtitle: GreyText(text: "Medium"),
                onTap: () {},
              ),
              Divider(color: Colors.white54, thickness: 0.2),
              ListTile(
                title: GreyText(text: "Media auto-download"),
                subtitle: GreyText(text: "Voice messages are always automatically downloaded for the best communication experience"),
              ),
              ListTile(
                leading: Text("   "),
                title: WhiteText(text: "When using mobile data"),
                subtitle: GreyText(text: "Photos"),
              ),
              ListTile(
                leading: Text("   "),
                title: WhiteText(text: "When connected on Wi-Fi"),
                subtitle: GreyText(text: "Photos"),
              ),
              ListTile(
                leading: Text("   "),
                title: WhiteText(text: "When Roaming"),
                subtitle: GreyText(text: "Photos"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
