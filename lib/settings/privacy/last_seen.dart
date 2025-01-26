import 'package:flutter/material.dart';

class LastSeen extends StatefulWidget {
  const LastSeen({super.key});

  @override
  State<LastSeen> createState() => _LastSeenState();
}

class _LastSeenState extends State<LastSeen> {
  String lastSeenOption = "Everyone";
  String onlineOption = "Everyone";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Last seen and online",
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
              "Who can see my last seen",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "Everyone",
                  groupValue: lastSeenOption,
                  title: Text("Everyone", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
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
                  value: "Nobody",
                  groupValue: lastSeenOption,
                  title: Text("Nobody", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      lastSeenOption = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),

            // Who can see when I'm online
            Text(
              "Who can see when I'm online",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "Everyone",
                  groupValue: onlineOption,
                  title: Text("Everyone", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      onlineOption = value!;
                    });
                  },
                ),
                RadioListTile<String>(
                  activeColor: Colors.green,
                  value: "Same as Last Seen",
                  groupValue: onlineOption,
                  title: Text("Same as Last Seen", style: TextStyle(color: Colors.white)),
                  onChanged: (value) {
                    setState(() {
                      onlineOption = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),

            // Additional grey text section
            Text(
              "If you don't share when you were last seen or online , you won't be able to see other people's last seen or online.",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
