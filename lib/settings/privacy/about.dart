import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String lastSeenOption = "Everyone";
  String onlineOption = "Everyone";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
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
              "Who can see my About",
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

          ],
        ),
      ),
    );
  }
}
