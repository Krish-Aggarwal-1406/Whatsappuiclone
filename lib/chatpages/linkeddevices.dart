import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/updatepages/createchannel.dart';

class LinkedDevices extends StatelessWidget {
  const LinkedDevices({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the back button color here
        ),
        title: Text(
          'Linked Devices',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Image.asset(
            "assets/linkeddevices.png",
            height: scrheight * .25,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            "You can link other devices to this account",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Text(
            "Learn More",
            style: TextStyle(color: Colors.blueAccent, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: scrwidth * .8,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {},
                child: Text(
                  "Link a device`",
                  style: TextStyle(color: Color(0xFF0B141B)),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              "Device Status",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              "Tap a device to log out",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child: Icon(Icons.laptop_windows,size: 30,),
              backgroundColor: Colors.lightBlueAccent,
            ),
            title: Text("Windows",style: TextStyle(color: Colors.white,fontSize: 20),),
            subtitle: Text("Last active 2 days ago",style: TextStyle(color: Colors.grey, ),),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            textAlign: TextAlign.center,

            text: TextSpan(
              text: 'Your personal messages are ', // The first part of the text
              style: TextStyle(color: Colors.grey, fontSize: 15), // Style for the first part
              children: <TextSpan>[
                TextSpan(
                  text: 'end to end encrypted ', // Second part with different style
                  style: TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()..onTap = () => showModalBottomSheet(context: context, builder: (BuildContext context)=>FractionallySizedBox(
                    heightFactor: 1.5,
                    child: CreateChannelPage(),
                  )),
                ),
                TextSpan(
                  text: 'on \nall your devices', // Third part with another style
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
