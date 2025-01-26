import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/settings/settings.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    List<data> currdata = [
      data(
          whatsappChannelNames: 'Tech Trends Chat',
          whatsappChannelSubtitles: 'Tech updates.',
          community1: 'Announcements',
          community1Subtitles: 'There will be meeting at 9',
          times: '08:00 AM',
          images: Image.asset('assets/techtrends.jpg')),
      data(
          whatsappChannelNames: 'Fitness Gurus',
          whatsappChannelSubtitles: 'Fitness tips.',
          community1: 'App Mentoring',
          community1Subtitles: 'Give progress',
          times: '08:05 AM',
          images: Image.asset('assets/fitness.jpg')),
      data(
          whatsappChannelNames: 'Travel Enthusiasts',
          whatsappChannelSubtitles: 'Travel stories.',
          community1: 'General',
          community1Subtitles: 'Kaise ho sab',
          times: '09:30 AM',
          images: Image.asset('assets/travel.jpg')),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
            textAlign: TextAlign.left,
            'Communities'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner),
              color: Colors.white),
          PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              offset: Offset(10, 40),
              onSelected: (value) {
                Get.to(SettingsPage());
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                        value: 'Option 1',
                        child: Text('Settings',
                            style: TextStyle(color: Colors.white))),
                  ])
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //new community container
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        shape: BoxShape.rectangle),
                    child: Icon(Icons.group),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Community',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.black),
            ),

            //community title
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('assets/gdgicon.jpg'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'GDG Volunteers 2024',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5),
              height: 0.3,
              decoration: BoxDecoration(color: Colors.grey),
            ),

            //first community
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: currdata.length,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: ListTile(
                          title: Text(
                            currdata[index].community1,
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: currdata[index].images.image,
                          ),
                          trailing: Text(
                            currdata[index].times,
                            style: TextStyle(color: Colors.grey),
                          ),
                          subtitle: Text(
                            currdata[index].community1Subtitles,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )),
            ),

            //view all container
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),

            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.black),
            ),

            //community title
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('assets/gaming.jpg'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'Extracurricular',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5),
              height: 0.3,
              decoration: BoxDecoration(color: Colors.grey),
            ),

            //second community
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: currdata.length,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(left: 7),
                        child: ListTile(
                          title: Text(
                            currdata[index].whatsappChannelNames,
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: currdata[index].images.image,
                          ),
                          trailing: Text(
                            currdata[index].times,
                            style: TextStyle(color: Colors.grey),
                          ),
                          subtitle: Text(
                            currdata[index].whatsappChannelSubtitles,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      )),
            ),

            //view all container
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),

            Container(
              height: 10,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class data {
  final String whatsappChannelNames;
  final String whatsappChannelSubtitles;
  final String community1;
  final String community1Subtitles;
  final String times;
  final Image images;
  data(
      {required this.whatsappChannelNames,
      required this.whatsappChannelSubtitles,
      required this.community1,
      required this.community1Subtitles,
      required this.times,
      required this.images});
}
