import 'package:flutter/material.dart';
class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<data> currdata=[
      data(names:'Father', icon: Icon(Icons.call), times: 'Today 08:00 AM', images: Image.asset('assets/brainpic.png')),
      data(names: 'Mother', icon: Icon(Icons.videocam), times: 'Today 08:05 AM', images: Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png')),
      data(names: 'Brother', icon: Icon(Icons.call), times: 'Today 09:30 AM', images: Image.asset('assets/chatbot-removebg-preview.png')),
      data(names: 'GDG Volunteers', icon: Icon(Icons.videocam), times: 'Today 11:00 AM', images: Image.asset('assets/google icon photo.jpeg')),
      data(names: 'GDG on campus', icon: Icon(Icons.call), times: 'Today 12:45 PM', images: Image.asset('assets/google icon photo.jpeg')),
      data(names: 'Friend 1', icon: Icon(Icons.videocam), times: 'Yesterday 02:15 PM', images: Image.asset('assets/3-removebg-preview.png')),
      data(names: 'Friend 2', icon: Icon(Icons.call), times: 'Yesterday 03:30 PM', images: Image.asset('assets/brainpic.png')),
      data(names: 'Friend 3', icon: Icon(Icons.videocam), times: 'Yesterday 05:00 PM', images: Image.asset('assets/chatbot-removebg-preview.png')),
      data(names: 'Friend 4', icon: Icon(Icons.call), times: 'Yesterday 06:30 PM', images: Image.asset('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png')),
      data(names: 'Friend 5', icon: Icon(Icons.videocam), times: 'Yesterday 08:00 PM', images: Image.asset('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png')),
      data(names: 'Friend 6', icon: Icon(Icons.call), times: 'Yesterday 09:45 PM', images: Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png')),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar:AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:30,
            color: Colors.white
        ),textAlign: TextAlign.left,'Calls'),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.qr_code_scanner),color: Colors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined),color: Colors.white),
          IconButton(onPressed: (){}, icon:Icon(Icons.search),color: Colors.white),
          Builder( builder: (context) => IconButton( icon: Icon(Icons.more_vert), color: Colors.white, onPressed: () { Scaffold.of(context).openEndDrawer(); }, ),)
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment:Alignment.centerLeft ,
            margin: EdgeInsets.only(left: 15),
            child: Text('Recent',
              style: TextStyle(
              fontSize: 20,
                color: Colors.white
            ),),
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
                      Icon(Icons.north_east,color: Colors.green,),
                      Text(currdata[index].times)
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage:currdata[index].images.image ,
                    backgroundColor:Colors.white,
                  ),
                  trailing: Icon(currdata[index].icon.icon,color: Colors.white,),)
            ),
          )
        ],
      ),
    );
  }
}
class data {
  final String names;
  final Icon icon;
  final Image images;
  final String times;

  data( {required this.names, required this.icon,required this.times,required this.images});
}

