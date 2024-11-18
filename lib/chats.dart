import 'package:flutter/material.dart ';
import 'package:whatsappui/newgroup.dart';
import 'settings.dart';
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<data> currdata=[ data(names:'Father', messages:'Hello, world!', times:'08:00 AM', images: Image.asset('assets/brainpic.png')),
    data(names: 'Mother', messages:'Welcome to Flutter!', times:  '08:05 AM', images:Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'),),
    data(names: 'Brother', messages:'This is a demo message.', times:  '09:30 AM', images:Image.asset('assets/chatbot-removebg-preview.png')),
    data(names: 'GDG Volunteers', messages:  'Keep coding and stay cool.', times:'11:00 AM', images: Image.asset('assets/google icon photo.jpeg')),
    data(names:'GDG on campus', messages: 'Flutter is fun!', times: '12:45 PM', images: Image.asset('assets/google icon photo.jpeg')),
    data(names:'Friend 1', messages:  'Have a great day!', times:  '02:15 PM',  images: Image.asset('assets/3-removebg-preview.png')),
    data(names: 'Friend 2', messages: 'You are doing great!',  times:'03:30 PM', images: Image.asset('assets/brainpic.png')),
    data(names:'Friend 3', messages: 'Stay positive and code on.', times: '05:00 PM', images: Image.asset('assets/chatbot-removebg-preview.png')),
    data(names:'Friend 4', messages: 'Learning Flutter is exciting!', times: '06:30 PM', images:Image.asset('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png')), data(names:'Friend 5', messages: 'Keep pushing forward.', times:  '08:00 PM', images: Image.asset('assets/Screenshot_2024-11-03_120912-removebg-preview.png')),
    data(names:'Friend 6', messages: 'Success is around the corner.', times: '09:45 PM', images: Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'))
    ];
    return Scaffold(

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
          PopupMenuButton<String>( onSelected: (String result)
          { switch (result)
          {
            case 'Option 1':Navigator.push(context, MaterialPageRoute(builder: (context)=>NewGroupPage()));
              break;
            case 'Option 2':
              break;
            case 'Option 3':
              break;
            case 'Option 4':
              break;
            case 'Option 5':
              break;
            case 'Option 6':Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
              break;
          } },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>( value: 'Option 1', child: Text('New Group',style: TextStyle(color: Colors.white),), ),
              PopupMenuItem<String>( value: 'Option 2', child: Text('New Broadcast',style: TextStyle(color: Colors.white)), ),
              PopupMenuItem<String>( value: 'Option 3', child: Text('Linked Devices',style: TextStyle(color: Colors.white)), ),
              PopupMenuItem<String>( value: 'Option 4', child: Text('Starred Messages',style: TextStyle(color: Colors.white)), ),
              PopupMenuItem<String>( value: 'Option 5', child: Text('Payments',style: TextStyle(color: Colors.white)), ),
              PopupMenuItem<String>( value: 'Option 6', child: Text('Settings',style: TextStyle(color: Colors.white)), ),],
            icon: Icon(Icons.more_vert,color: Colors.white),
            offset: Offset(10,50),),],
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
                itemCount: currdata.length,
                itemBuilder: (context,index)=> ListTile(title:Text(currdata[index].names,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                ),),
                   subtitle:Row(
                     children: [
                       Icon(Icons.check),
                       Text(currdata[index].messages,style: TextStyle(color: Colors.grey),)
                     ],
                   ),
                   leading: CircleAvatar(
                  backgroundImage:currdata[index].images.image ,
                      backgroundColor:Colors.white,
                ),
                trailing: Text(currdata[index].times,
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
class data {
  final String names;
  final String messages;
  final String times;
  final Image images;
  data( {required this.names, required this.messages,required this.times,required this.images});
}
// endDrawer: Align(
// alignment: Alignment.topRight,
// child:Container(
// margin: EdgeInsets.only(top: 100),
// height: 100,
// width: 175,
// child: Drawer(
// child: ListView(
// children: [ListTile(
// title:Text('Chats Page'),
// onTap: (){
// Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatsPage()));
// },
// ),
// ListTile(
// title:Text('Updates Page'),
// onTap: (){
// Navigator.push(context,MaterialPageRoute(builder: (context)=>UpdatesPage()));
// },
// ),
// ListTile(
// title:Text('Communities Page'),
// onTap: (){
// Navigator.push(context,MaterialPageRoute(builder: (context)=>CommunitiesPage()));
// },
// ),
// ListTile(
// title:Text('Calls Page'),
// onTap: (){
// Navigator.push(context,MaterialPageRoute(builder: (context)=>CallsPage()));
// },
// ),]
// ),
//
// ),
// ),
// ),