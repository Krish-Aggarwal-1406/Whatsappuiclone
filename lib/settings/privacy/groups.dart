import 'package:flutter/material.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  String lastSeenOption = "Everyone";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Groups",
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
              "Who can add me to groups",
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
                Text("Admins who can't add you to group will have the option of inviting you privately instead.",style: TextStyle(color: Colors.grey),),
                Text("This setting does not apply to community announcement groups.If you're added to a community announcement group.",style: TextStyle(color: Colors.grey),)

              ],
            ),

          ],
        ),
      ),
    );
  }
}
