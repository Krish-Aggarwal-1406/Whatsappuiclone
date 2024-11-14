import 'package:flutter/material.dart ';
import 'communities.dart';
import 'calls.dart';
import 'updates.dart';
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<String> names=['Father','Mother','Brother','GDG Volunteers','GDG on campus','Friend 1','Friend 2','Friend 3','Friend 4','Friend 5','Friend 6'];
    List<String> messages = [ 'Hello, world!', 'Welcome to Flutter!', 'This is a demo message.', 'Keep coding and stay cool.', 'Flutter is fun!', 'Have a great day!', 'You are doing great!', 'Stay positive and code on.', 'Learning Flutter is exciting!', 'Keep pushing forward.', 'Success is around the corner.', ];
    List<String> times = [ '08:00 AM','08:05 AM', '09:30 AM', '11:00 AM', '12:45 PM', '02:15 PM', '03:30 PM', '05:00 PM', '06:30 PM', '08:00 PM', '09:45 PM',];
    List<Image>  images=[Image.asset('assets/brainpic.png'),Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'),Image.asset('assets/chatbot-removebg-preview.png'),Image.asset('assets/google icon photo.jpeg'),Image.asset('assets/google icon photo.jpeg'),Image.asset('assets/3-removebg-preview.png'),Image.asset('assets/brainpic.png'),Image.asset('assets/chatbot-removebg-preview.png'),Image.asset('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png'),Image.asset('assets/Screenshot_2024-11-03_120912-removebg-preview.png'),Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'),];
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [ListTile(
            title:Text('Chats Page'),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatsPage()));
            },
          ),
            ListTile(
              title:Text('Updates Page'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>UpdatesPage()));
              },
            ),
            ListTile(
              title:Text('Communities Page'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>CommunitiesPage()));
              },
            ),
            ListTile(
              title:Text('Calls Page'),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>CallsPage()));
              },
            ),]
        ),

      ),
      backgroundColor: Color(0xFF0B141B),
      appBar:AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:30,
            color: Colors.white
        ),textAlign: TextAlign.left,'WhatsApp'),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.qr_code_scanner),color: Colors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined),color: Colors.white),
          Builder( builder: (context) => IconButton( icon: Icon(Icons.more_vert), color: Colors.white, onPressed: () { Scaffold.of(context).openEndDrawer(); }, ),)
        ],
      ),
      body: Column(
        children: [
          Container(
            width: scrwidth*.95,
            height: scrheight*.07,
            // Optional padding
            decoration: BoxDecoration(
              color: Color(0xFF242B31),    // Optional background color
              borderRadius: BorderRadius.circular(30.0), // Rounded corners
            ),

            child:Row(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Icon(Icons.search,color: Colors.white,),
                ),
                Text(style: TextStyle(
                    color: Colors.white,
                  fontSize: 17
                ),'Search...')
              ],
            )
          ),

          Expanded(
            child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context,index)=> ListTile(title:Text(names[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                ),),
                   subtitle:Row(
                     children: [
                       Icon(Icons.check),
                       Text(messages[index],style: TextStyle(color: Colors.grey),)
                     ],
                   ),
                   leading: CircleAvatar(
                  backgroundImage:images[index].image ,
                      backgroundColor:Colors.white,
                ),
                trailing: Text(times[index],
                style: TextStyle(
                    color: Colors.grey,
                  fontSize: 13
                ),),)
            ),
          )
        ],
      ),

    );
  }
}
