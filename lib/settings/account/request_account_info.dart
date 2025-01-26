import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/toggle_button.dart';

class RequestAccountInfo extends StatefulWidget {
  @override
  State<RequestAccountInfo> createState() => _RequestAccountInfoState();
}

class _RequestAccountInfoState extends State<RequestAccountInfo> {
  bool createReport = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Request Account Info",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Account information",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Request account report",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              leading: Icon(Icons.insert_drive_file, color: Colors.grey),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create a report of your WhatsApp account information and settings, "
                    "which you can access or port to another app. This report does not include your messages.",
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ),
            Divider(color: Colors.grey),
            SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Create reports automatically",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              leading: Icon(Icons.restore, color: Colors.grey),
              trailing: ToggleSwitch(initialValue: createReport),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "A new report will be created every month.",
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ),
            Divider(color: Colors.grey),
            Text(
              "Channels activity",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 10),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Request channels report",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              leading: Icon(Icons.insert_drive_file, color: Colors.grey),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create a report of your WhatsApp account information and settings, "
                    "which you can access or port to another app. This report does not include your messages.",
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ),
            Divider(color: Colors.grey),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Create reports automatically",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              leading: Icon(Icons.restore, color: Colors.grey),
              trailing: ToggleSwitch(initialValue: createReport),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "A new report will be created every month.",
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
