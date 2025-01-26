import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagingScreen extends StatefulWidget {
  @override
  _MessagingScreenState createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [
    'Hey, how are you?',
    'I\'m good! How about you?',
    'I\'m doing well, thanks for asking.',
    'What\'s up?',
    'Not much, just chilling. What about you?',
  ];

  void _sendMessage() {
    setState(() {
      messages.add(_controller.text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    double scrHeight = MediaQuery.of(context).size.height;
    double scrWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Color(0xff0B1014),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
            color: Colors.white,
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {
              // Handle the selected value
              print("Selected option: $value");
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: "View Contact",
                  child: Text("View Contact"),
                ),
                PopupMenuItem<String>(
                  value: "Search",
                  child: Text("Search"),
                ),
                PopupMenuItem<String>(
                  value: "Add to List",
                  child: Text("Add to List"),
                ),
                PopupMenuItem<String>(
                  value: "Media, Links, and Docs",
                  child: Text("Media, Links, and Docs"),
                ),
                PopupMenuItem<String>(
                  value: "Mute Notifications",
                  child: Text("Mute Notifications"),
                ),
                PopupMenuItem<String>(
                  value: "Disappearing Messages",
                  child: Text("Disappearing Messages"),
                ),
                PopupMenuItem<String>(
                  value: "Wallpaper",
                  child: Text("Wallpaper"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(

        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return MessageBubble(text: messages[index], isMe: index % 2 == 0);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: scrWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff171e1e),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // No function passed for image picking
                      },
                      icon: Icon(Icons.attach_file, color: Colors.white70),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        // No function passed for image taking
                      },
                      icon: Icon(Icons.camera_alt, color: Colors.white70),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white70),
                        controller: _controller,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: 'Type a message...',
                          hintStyle: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        if (_controller.text.isEmpty) {
                          Get.snackbar(
                            "Error",
                            "Message to likho pehle!",
                            snackPosition: SnackPosition.TOP,
                            duration: Duration(seconds: 2),
                            boxShadows: [BoxShadow(color: Color(0xC7CC5858), blurRadius: 14)],
                            colorText: Colors.white,
                          );
                        } else {
                          _sendMessage();
                        }
                      },
                      icon: Icon(Icons.send, color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;

  MessageBubble({required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isMe ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: TextStyle(color: isMe ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
