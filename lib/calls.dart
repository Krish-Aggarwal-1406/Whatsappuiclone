import 'package:flutter/material.dart';
class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<String> names=['Father','Mother','Brother','GDG Volunteers','GDG on campus','Friend 1','Friend 2','Friend 3','Friend 4','Friend 5','Friend 6'];
    List<Icon> icon = [ Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.call), Icon(Icons.videocam), Icon(Icons.call),];
    List<Image>  images=[Image.asset('assets/brainpic.png'),Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'),Image.asset('assets/chatbot-removebg-preview.png'),Image.asset('assets/google icon photo.jpeg'),Image.asset('assets/google icon photo.jpeg'),Image.asset('assets/3-removebg-preview.png'),Image.asset('assets/brainpic.png'),Image.asset('assets/chatbot-removebg-preview.png'),Image.asset('assets/Screenshot_2024-10-29_204944-removebg-preview__1_-removebg-preview.png'),Image.asset('assets/Screenshot_2024-11-03_120912-removebg-preview.png'),Image.asset('assets/vecteezy_doctor-female-with-face-mask-isolated-icon_-removebg-preview.png'),];
    List<String> times = [ 'Today 08:00 AM','Today 08:05 AM', 'Today 09:30 AM', 'Today 11:00 AM', 'Today 12:45 PM', 'Yesterday 02:15 PM', 'Yesterday 03:30 PM', 'Yesterday 05:00 PM', 'Yesterday 06:30 PM', 'Yesterday 08:00 PM', 'Yesterday 09:45 PM',];
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
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.white)
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
                itemCount: names.length,
                itemBuilder: (context,index)=> ListTile(title:Text(names[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.white,
                  ),),
                  subtitle:Row(
                    children: [
                      Icon(Icons.north_east,color: Colors.green,),
                      Text(times[index])
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage:images[index].image ,
                    backgroundColor:Colors.white,
                  ),
                  trailing: Icon(icon[index].icon,color: Colors.white,),)
            ),
          )
        ],
      ),
    );
  }
}
