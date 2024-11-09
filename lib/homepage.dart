import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chats.dart';
import 'calls.dart';
import 'communities.dart';
import 'updates.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),

     bottomNavigationBar: TabBar(labelColor: Color(0xFF19A55D),
         indicatorColor: Color(0xFF19A55D),
         unselectedLabelColor: Colors.white,
         tabs:[
         Tab(icon: Icon(Icons.chat), text: 'Chats'),
         Tab(icon: Icon(Icons.notifications), text: 'Updates'),
         Tab(icon: Icon(Icons.group), text: 'Communities'),
         Tab(icon: Icon(Icons.call), text: 'Calls')]),

     body: TabBarView(children: [ChatsPage(),
       UpdatesPage(),
       CommunitiesPage(),
       CallsPage()
     ]),


    );
  }
}
