import 'package:flutter/material.dart';

class DefaultTimer extends StatefulWidget {
  const DefaultTimer({super.key});

  @override
  State<DefaultTimer> createState() => _DefaultTimerState();
}

class _DefaultTimerState extends State<DefaultTimer> {
  String lastSeenOption = "Off";
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
              "Start new chats with a disappearing message timer set to",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 10),
            Column(
              children: [

                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "24 hours",
                  groupValue: lastSeenOption,
                  title: Text("24 hours", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "7 days",
                  groupValue: lastSeenOption,
                  title: Text("7 days", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "90 days",
                  groupValue: lastSeenOption,
                  title: Text("90 days", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "Off",
                  groupValue: lastSeenOption,
                  title: Text("Off", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
              ],
            ),
            Text("When turned on all new individual chats will start with disappearing messages set to the duration you select.This setting will not affect you existing chats",style: TextStyle(color: Colors.grey),),
            Text("Learn more",style: TextStyle(color: Colors.blue),)

          ],
        ),
      ),
    );
  }
}
