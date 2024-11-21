import 'package:flutter/material.dart ';
import 'settings.dart';
class NewBroadcastPage extends StatelessWidget {
  const NewBroadcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<data> currdata=[
      data(names:'Father', messages:'Hey there! I am using WhatsApp.', images: Image.asset('assets/brainpic.png')),
      data(names: 'Mother', messages:'Life is beautiful!',  images:Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'),),
      data(names: 'Brother', messages:'Busy at work. Will reply soon.',  images:Image.asset('assets/chatbot-removebg-preview.png')),
      data(names: 'Kartik', messages:  'At the beach, loving the weather.', images: Image.asset('assets/gaming.jpg')),
      data(names:'Loveraj', messages: 'Available to chat anytime.', images: Image.asset('assets/music.jpg')),
      data(names:'Friend 1', messages:  'On a vacation, away from the office',  images: Image.asset('assets/3-removebg-preview.png')),
      data(names: 'Friend 2', messages: 'Hello! Let\'s connect.',   images: Image.asset('assets/brainpic.png')),
      data(names:'Friend 3', messages: 'Offline for the moment.', images: Image.asset('assets/chatbot-removebg-preview.png')),
      data(names:'Friend 4', messages: 'What\'s up? Let\'s talk.',  images:Image.asset('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png')),
      data(names:'Friend 5', messages: 'Just finished a workout!',  images: Image.asset('assets/fitness.jpg')),
      data(names:'Friend 6', messages: 'Taking a break, will reply soon.',  images: Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'))
    ];
    int startindex=5;
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(
          255, 33, 190, 98),
        onPressed: (){},child: Icon(Icons.check,color: Color(0xFF0B141B),size: 25,),),

      backgroundColor: Color(0xFF0B141B),
      appBar:AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF0B141B),
          title: Column(
            children: [
              Text(style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:20,
                  color: Colors.white
              ),textAlign: TextAlign.left,'New Broadcast'),
              Text('0 of 256 selected',style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:13,
                  color: Colors.white
              ),textAlign: TextAlign.left)
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.search),color: Colors.white),
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Only contacts with +91 80536 45063 in their adress',style: TextStyle(color: Colors.grey),),
            Text('book will recieve your broadcast messages',style: TextStyle(color: Colors.grey),),
            Divider(color:Colors.grey ,thickness: 0.5,),
            Container(alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15,top: 15),
                child: Text('Contacts from Whatsapp',style: TextStyle(color: Colors.grey),)),

            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:currdata.length,
                itemBuilder: (context,index)=> ListTile(title:Text(currdata[index].names,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),),
                  subtitle:Text(currdata[index].messages,style: TextStyle(color: Colors.grey),),
                  leading: CircleAvatar(
                    backgroundImage:currdata[index].images.image ,
                    backgroundColor:Colors.white,
                  ),

                )
            ),


          ],
        ),
      ),

    );
  }
}
class data {
  final String names;
  final String messages;

  final Image images;
  data( {required this.names, required this.messages,required this.images});
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