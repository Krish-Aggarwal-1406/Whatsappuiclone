import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/grey_text.dart';
import 'package:whatsappui/widgets/white_text.dart';



class InviteFriendPage extends StatelessWidget {
  final List<Contact> contacts = List.generate(
    15,
        (index) => Contact(
      name: 'User ${index + 1}',
      number: '+91 1234${index}5678',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invite a Friend",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(backgroundColor: Colors.green,
                  child: Icon(Icons.share,color: Colors.black,)),
              title: WhiteText(text: "Share Link"),
            ),
            Align(alignment: Alignment.centerLeft,
                child: GreyText(text: "From Contacts")),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person, color: Colors.white),
                      backgroundColor: Colors.grey,
                    ),
                    title: Text(
                      contact.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: GreyText(text: contact.number),
                    trailing: Text(
                      "Invite",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Contact {
  final String name;
  final String number;

  Contact({required this.name, required this.number});
}
