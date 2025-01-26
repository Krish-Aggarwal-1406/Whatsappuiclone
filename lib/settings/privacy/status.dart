import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  String lastSeenOption = "My Contacts";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Status privacy",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        color: Color(0xFF0B141B),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Who can see my last seen
            Text(
              "Who can see my status updates",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 10),
            Column(
              children: [

                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "My Contacts",
                  groupValue: lastSeenOption,
                  title: Text("My Contacts", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "My Contacts Except...",
                  groupValue: lastSeenOption,
                  title: Text("My Contacts Except...", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "Only share with...",
                  groupValue: lastSeenOption,
                  title: Text("Only share with...", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
              ],
            ),
            Text("Changes to your privacy won't affect status updates that you've sent already",style: TextStyle(color: Colors.grey),)

          ],
        ),
      ),
    );
  }
}
