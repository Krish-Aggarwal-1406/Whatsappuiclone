import 'package:flutter/material.dart';
import 'chats.dart';
import 'calls.dart';
import 'communities.dart';
import 'updates.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;

    // List of widgets for the different pages
    final List<Widget> pages = [
      ChatsPage(),
      UpdatesPage(),
      CommunitiesPage(),
      CallsPage(),
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(

        backgroundColor: Color(0xFF0B141B),
        bottomNavigationBar: scrwidth < 640
            ? TabBar(
          labelColor: Color(0xFF19A55D),
          indicatorColor: Color(0xFF19A55D),
          unselectedLabelColor: Colors.white,
          tabs: [
              Tab(icon: Icon(Icons.chat), text: 'Chats'),
              Tab(icon: Icon(Icons.notifications), text: 'Updates'),
             Tab(icon: Icon(Icons.group), text: 'Communities'),
            Tab(icon: Icon(Icons.call), text: 'Calls'),
          ],
        )
            : null,
        body: Row(
          children: [
            if (scrwidth >= 640)
              NavigationRail(
                backgroundColor:  Color(0xFF0B141B), // Custom background color
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedindex = index;
                  });
                },
                destinations: [
                  NavigationRailDestination(icon: Icon(Icons.chat), label: Text('Chats')),
                  NavigationRailDestination(icon: Icon(Icons.notifications), label: Text('Updates')),
                  NavigationRailDestination(icon: Icon(Icons.group), label: Text('Communities')),
                  NavigationRailDestination(icon: Icon(Icons.call), label: Text('Calls')),
                ],
                selectedIndex: _selectedindex,
              ),
            Expanded(
              child: scrwidth < 640
                  ? TabBarView(
                children: pages,
              )
                  : pages[_selectedindex],
            ),
          ],
        ),
      ),
    );
  }
}
