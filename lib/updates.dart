import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsappui/createchannel.dart';
import 'settings.dart';
class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<Data> currdata = [
      Data(whatsappChannelNames: 'Tech Trends Chat', whatsappChannelSubtitles: 'Tech updates.', times: '08:00 AM', images: Image.asset('assets/techtrends.jpg'), names: 'Father'),
      Data(whatsappChannelNames: 'Fitness Gurus', whatsappChannelSubtitles: 'Fitness tips.', times: '08:05 AM', images: Image.asset('assets/fitness.jpg'), names: 'Mother'),
      Data(whatsappChannelNames: 'Travel Enthusiasts', whatsappChannelSubtitles: 'Travel stories.', times: '09:30 AM', images: Image.asset('assets/travel.jpg'), names: 'Brother'),
      Data(whatsappChannelNames: 'Cooking Secrets', whatsappChannelSubtitles: 'Yummy recipes.', times: '11:00 AM', images: Image.asset('assets/cooking.jpg'), names: 'GDG Volunteers'),
      Data(whatsappChannelNames: 'Book Lovers Club', whatsappChannelSubtitles: 'Book chats.', times: '12:45 PM', images: Image.asset('assets/booklover.jpg'), names: 'GDG on campus'),
      Data(whatsappChannelNames: 'Startup Discussions', whatsappChannelSubtitles: 'Startup talk.', times: '02:15 PM', images: Image.asset('assets/startup.jpg'), names: 'Friend 1'),
      Data(whatsappChannelNames: 'Music Mania', whatsappChannelSubtitles: 'Music picks.', times: '03:30 PM', images: Image.asset('assets/music.jpg'), names: 'Friend 2'),
      Data(whatsappChannelNames: 'Parenting Tips', whatsappChannelSubtitles: 'Parenting tips.', times: '05:00 PM', images: Image.asset('assets/parenting.jpg'), names: 'Friend 3'),
      Data(whatsappChannelNames: 'Photography Hub', whatsappChannelSubtitles: 'Photo skills.', times: '06:30 PM', images: Image.asset('assets/photography.jpg'), names: 'Friend 4'),
      Data(whatsappChannelNames: 'Daily Motivation', whatsappChannelSubtitles: 'Daily quotes.', times: '08:00 PM', images: Image.asset('assets/motivation.jpg'), names: 'Friend 5'),
      Data(whatsappChannelNames: 'Gaming Legends', whatsappChannelSubtitles: 'Gaming news.', times: '09:45 PM', images: Image.asset('assets/gaming.jpg'), names: 'Friend 6')
    ];
    List<data2> currdata2=[
      data2(Channelnames: 'Sarkari result', followers: '3.6 M followers', dp: Image(image: AssetImage('assets/sarkariresult.jpeg'))),
          data2(Channelnames: 'Aaj Tak', followers: '4.5 M followers', dp: Image(image: AssetImage('assets/aajtak.png'))),
          data2(Channelnames: 'Techno Gamers', followers: '6 M followers', dp: Image(image: AssetImage('assets/technogamer.jpeg'))),
          data2(Channelnames: 'Zee News', followers: '5 M followers', dp: Image(image: AssetImage('assets/zeenews.jpeg'))),
    ];
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 35,
            width: 35,
            child: FloatingActionButton(
             shape:  RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ),
              backgroundColor: Color.fromARGB(
                  255, 36, 43, 49),
              onPressed: (){},child: Icon(Icons.edit,color:Colors.white,size: 20,),),
          ),
          SizedBox(height: 16,),
          FloatingActionButton(
            backgroundColor: Color.fromARGB(
              255, 33, 190, 98),
            onPressed: (){},child: Icon(Icons.camera_alt,color: Color(0xFF0B141B),size: 25,),),
          SizedBox(height: 16,),

        ],
      ),
      backgroundColor: Color(0xFF0B141B),
      appBar:AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:30,
            color: Colors.white
        ),textAlign: TextAlign.left,'Updates'),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.qr_code_scanner),color: Colors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined),color: Colors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Colors.white),
          PopupMenuButton<String>( onSelected: (String result)
          { switch (result)
          {
            case 'Option 1':
            break;
            case 'Option 2':showModalBottomSheet(context: context, builder: (BuildContext context)=>CreateChannelPage());
              break;
            case 'Option 3':Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
              break;

          } },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>( value: 'Option 1', child: Text('Status Privacy',style: TextStyle(color: Colors.white),), ),
              PopupMenuItem<String>( value: 'Option 2', child: Text('Create Channel',style: TextStyle(color: Colors.white)), ),
              PopupMenuItem<String>( value: 'Option 3', child: Text('Settings',style: TextStyle(color: Colors.white)), ),
             ],
            icon: Icon(Icons.more_vert,color: Colors.white),
            offset: Offset(10,50),),],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(left: 15,bottom: 20),
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text('Status',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),),
              ),
            ),
        SizedBox(
          height: 110,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: currdata.length,
            itemBuilder: (context, index) {
              String truncatedText=currdata[index].names.length > 8? currdata[index].names.substring(0,8)+'...':currdata[index].names;
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 7),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: currdata[index].images.image,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      truncatedText,
                      style: TextStyle(color: Colors.white,fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
              }
          ),
        ),

        Container(margin: EdgeInsets.only(top: 5),
              height: 0.3,decoration: BoxDecoration(color: Colors.grey),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
        
                children: [
        
                  Text('Channels',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),),
                  SizedBox(width: scrwidth*.55,),
                  Text('Explore',style: TextStyle(fontSize: 15,
                  color: Colors.green),),
                  Icon(Icons.arrow_forward_ios,color: Colors.green,size: 15,)
                ],
              ),
            ),
        
            SizedBox(

              child: ListView.builder(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                  itemCount: currdata.length,
                  itemBuilder: (context,index)=> ListTile(title:Text(currdata[index].whatsappChannelNames,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.white,
                    ),),
                    subtitle:Row(
                      children: [
                        Icon(Icons.photo,color: Colors.grey,),
                        Text(currdata[index].whatsappChannelSubtitles,style: TextStyle(color: Colors.grey),)
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
            ),
            SizedBox(height: 10,),
            Container(margin: EdgeInsets.only(left: 15),
                alignment: Alignment.centerLeft,
                child: Text('Find channels to follow',style: TextStyle(color: Colors.grey,),)),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                  itemCount: currdata2.length,
                  itemBuilder: (context,index)=> ListTile(title:Text(currdata2[index].Channelnames,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                      color: Colors.white,
                    ),),
                    subtitle:Text(currdata2[index].followers,style: TextStyle(color: Colors.grey),),
                    leading: CircleAvatar(
                      backgroundImage:currdata2[index].dp.image ,
                      backgroundColor:Colors.white,
                    ),
                    trailing: Container(
                      width: 87,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button press
                        },
                        style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.green
                        ),
                        child: Text('Follow',style: TextStyle(color: Colors.white,fontSize: 13),),
                      ),
                    )

                  )
              ),

            ),
             SizedBox(height: 10,),
             Container(alignment: Alignment.centerLeft,
               margin: EdgeInsets.only(left: 15),
               child: ElevatedButton(
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,
                 shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20),
                     side: BorderSide(color: Colors.grey, width: 0.5),  ),),
                       onPressed: (){}, child: Text('Explore more',style: TextStyle(color: Colors.green),)),
             )
          ],
        ),
      ),
    );
  }
}
class Data {
  final String whatsappChannelNames;
  final String whatsappChannelSubtitles;
  final String times;
  final Image images;
  final String names;

  Data({
    this.whatsappChannelNames = '',
    this.whatsappChannelSubtitles = '',
    this.times = '',
    this.images = const Image(image: AssetImage('assets/fitness.jpg')),
    this.names = '',
  });
}
class data2{
   final String Channelnames;
   final String followers;
   final Image dp;

   data2({required this.Channelnames, required this.followers, required this.dp});
}

