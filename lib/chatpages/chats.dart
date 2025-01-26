import 'dart:io';  // For handling file storage
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';  // To request runtime permissions
import 'package:get/get.dart';  // For navigation
import 'package:whatsappui/chatpages/messaging_screen.dart';
import 'package:whatsappui/chatpages/starred_messages.dart';

// Assuming you already have these pages, if not, just define empty widgets or import your actual pages.
import '../settings/settings.dart';
import 'newgroup.dart';
import 'newbroadcast.dart';
import 'linkeddevices.dart';
import 'payments.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  // Function to pick an image from the camera
  void _pickImageFromCamera() async {
    // Request Camera permission
   // PermissionStatus cameraStatus = await Permission.camera.request();

    //if (cameraStatus.isGranted) {
      // If permission is granted, open the camera
      final pickedFile = await _picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        setState(() {
          _imageFile = pickedFile;
        });
      }}
  //else {
      // Handle the case where permission is denied
 //     print("Camera permission denied");
   // }
//  }

  @override
  Widget build(BuildContext context) {
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;

    List<data> currdata = [
      data(names: 'Father', messages: 'Hello, world!', times: '08:00 AM', images: Image.asset('assets/brainpic.png')),
      data(names: 'Mother', messages: 'Welcome to Flutter!', times: '08:05 AM', images: Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png')),
      data(names: 'Brother', messages: 'This is a demo message.', times: '09:30 AM', images: Image.asset('assets/chatbot-removebg-preview.png')),
      data(names: 'GDG Volunteers', messages: 'Keep coding and stay cool.', times: '11:00 AM', images: Image.asset('assets/google icon photo.jpeg')),
      data(names: 'GDG on campus', messages: 'Flutter is fun!', times: '12:45 PM', images: Image.asset('assets/google icon photo.jpeg')),
      data(names: 'Friend 1', messages: 'Have a great day!', times: '02:15 PM', images: Image.asset('assets/3-removebg-preview.png')),
      data(names: 'Friend 2', messages: 'You are doing great!', times: '03:30 PM', images: Image.asset('assets/brainpic.png')),
      data(names: 'Friend 3', messages: 'Stay positive and code on.', times: '05:00 PM', images: Image.asset('assets/chatbot-removebg-preview.png')),
      data(names: 'Friend 4', messages: 'Learning Flutter is exciting!', times: '06:30 PM', images: Image.asset('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png')),
      data(names: 'Friend 5', messages: 'Keep pushing forward.', times: '08:00 PM', images: Image.asset('assets/Screenshot_2024-11-03_120912-removebg-preview.png')),
      data(names: 'Friend 6', messages: 'Success is around the corner.', times: '09:45 PM', images: Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png')),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 33, 190, 98),
        onPressed: () {},
        child: Icon(
          Icons.add_comment_rounded,
          color: Color(0xFF0B141B),
          size: 25,
        ),
      ),
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
            color: Colors.white,
          ),
          IconButton(
            onPressed: _pickImageFromCamera,  // Open camera
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.white,
          ),
          PopupMenuButton<String>(
            onSelected: (String result) {
              switch (result) {
                case 'Option 1':
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewGroupPage()));
                  break;
                case 'Option 2':
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewBroadcastPage()));
                  break;
                case 'Option 3':
                  Get.to(LinkedDevices());
                  break;
                case 'Option 4':
                  Get.to(StarredMessages());
                  break;
                case 'Option 5':
                  Get.to(PaymentsPage());
                  break;
                case 'Option 6':
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(value: 'Option 1', child: Text('New Group', style: TextStyle(color: Colors.white))),
              PopupMenuItem<String>(value: 'Option 2', child: Text('New Broadcast', style: TextStyle(color: Colors.white))),
              PopupMenuItem<String>(value: 'Option 3', child: Text('Linked Devices', style: TextStyle(color: Colors.white))),
              PopupMenuItem<String>(value: 'Option 4', child: Text('Starred Messages', style: TextStyle(color: Colors.white))),
              PopupMenuItem<String>(value: 'Option 5', child: Text('Payments', style: TextStyle(color: Colors.white))),
              PopupMenuItem<String>(value: 'Option 6', child: Text('Settings', style: TextStyle(color: Colors.white))),
            ],
            icon: Icon(Icons.more_vert, color: Colors.white),
            offset: Offset(10, 50),
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Container(
            width: scrwidth * .95,
            height: scrheight * .07,
            decoration: BoxDecoration(
              color: Color(0xFF242B31),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                Text(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                  'Search...',
                ),
              ],
            ),
          ),

          // Row of Buttons Below the Search Bar
          Container(
            width: scrwidth * .95,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                button('Unread'),
                SizedBox(width: 10),
                button('Starred'),
                SizedBox(width: 10),
                button('Favourite'),
                SizedBox(width: 10),
                button('All'),
              ],
            ),
          ),

          // List of Chats
          Expanded(
            child: ListView.builder(
              itemCount: currdata.length,
              itemBuilder: (context, index) => ListTile(

                title: Text(
                  currdata[index].names,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Icon(Icons.check),
                    Text(
                      currdata[index].messages,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: currdata[index].images.image,
                  backgroundColor: Colors.white,
                ),
                trailing: Text(
                  currdata[index].times,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                  onTap:  (){Get.to(MessagingScreen());}
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Button widget
  Widget button(String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF242B31),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Text(
        label,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}

class data {
  final String names;
  final String messages;
  final String times;
  final Image images;

  data({required this.names, required this.messages, required this.times, required this.images});
}
