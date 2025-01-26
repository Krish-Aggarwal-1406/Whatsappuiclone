import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/toggle_button.dart';

class SecurityNotifications extends StatefulWidget {
  const SecurityNotifications({super.key});

  @override
  State<SecurityNotifications> createState() => _SecurityNotificationsState();
}

class _SecurityNotificationsState extends State<SecurityNotifications> {
  bool securityNotification = false;

  @override
  Widget build(BuildContext context) {
    List<Data> dataList = [
      Data(icon: Icons.chat, text: "Text and voice messages"),
      Data(icon: Icons.phone, text: "Audio and video calls"),
      Data(icon: Icons.attach_file, text: "Photos, videos and documents"),
      Data(icon: Icons.location_on, text: "Your chats and calls are private"),
      Data(icon: Icons.access_time, text: "Status updates"),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Security notifications',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Icon(Icons.lock, color: Colors.green, size: 100)),
            SizedBox(height: 30),
            Text(
              "Your chats and calls are private",
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text(
              "End-to-end encryption keeps your personal messages and calls private between you and the people you choose. Not even WhatsApp can read or listen to them. This includes:",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 10),

            // ListView.builder without Expanded, so it takes as much space as needed
            ListView.builder(
              shrinkWrap: true, // This ensures the ListView only takes up space needed
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(dataList[index].icon, color: Colors.green),
                  title: Text(
                    dataList[index].text,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),

            // Adjusted spacing between Learn more and list
            Text("Learn more", style: TextStyle(color: Colors.blue)),

            Divider(color: Colors.grey),

            ListTile(
              title: Text("Show security notifications on this device", style: TextStyle(color: Colors.white)),
              trailing: ToggleSwitch(initialValue: securityNotification),
              subtitle: Text(
                "Get notified when your security code changes for a contact's phone in an end-to-end encrypted chat. If you have multiple devices, this setting must be enabled on each device where you want to get notifications.",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  final IconData icon;
  final String text;

  Data({required this.icon, required this.text});
}
