import 'package:flutter/material.dart';
class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<data> currdata=[
      data(whatsappChannelNames: 'Tech Trends Chat',whatsappChannelSubtitles: 'Tech updates.', times: '08:00 AM', images:Image.asset('assets/techtrends.jpg'),),
      data(whatsappChannelNames:'Fitness Gurus', whatsappChannelSubtitles: 'Fitness tips.', times:'08:05 AM', images: Image.asset('assets/fitness.jpg'),),
      data(whatsappChannelNames: 'Travel Enthusiasts',  whatsappChannelSubtitles: 'Travel stories.',  times:  '09:30 AM', images: Image.asset('assets/travel.jpg'),),
      data(whatsappChannelNames: 'Cooking Secrets', whatsappChannelSubtitles: 'Yummy recipes.', times: '11:00 AM', images: Image.asset('assets/cooking.jpg'),),
      data(whatsappChannelNames:  'Book Lovers Club',  whatsappChannelSubtitles: 'Book chats.', times: '12:45 PM', images: Image.asset('assets/booklover.jpg'),),
      data(whatsappChannelNames:'Startup Discussions', whatsappChannelSubtitles: 'Startup talk.', times: '02:15 PM',  images: Image.asset('assets/startup.jpg')),
      data(whatsappChannelNames: 'Music Mania', whatsappChannelSubtitles: 'Music picks.', times: '03:30 PM', images: Image.asset('assets/music.jpg')),
     data(whatsappChannelNames: 'Parenting Tips', whatsappChannelSubtitles: 'Parenting tips.', times: '05:00 PM', images: Image.asset('assets/parenting.jpg')),
     data(whatsappChannelNames:'Photography Hub', whatsappChannelSubtitles: 'Photo skills.', times:  '06:30 PM', images: Image.asset('assets/photography.jpg')),
     data(whatsappChannelNames: 'Daily Motivation', whatsappChannelSubtitles:  'Daily quotes.', times:'08:00 PM', images: Image.asset('assets/motivation.jpg')),
     data(whatsappChannelNames:'Gaming Legends', whatsappChannelSubtitles: 'Gaming news.', times: '09:45 PM', images: Image.asset('assets/gaming.jpg'),)
    ];
    return Scaffold(
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
          Builder( builder: (context) => IconButton( icon: Icon(Icons.more_vert), color: Colors.white, onPressed: () { Scaffold.of(context).openEndDrawer(); }, ),)

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(margin: EdgeInsets.only(left: 15),
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
              height: 130,
              child: ListView.builder(shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: currdata.length,
                  itemBuilder: (context,index)=>Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 2),
                    shape: BoxShape.circle),

                    margin: EdgeInsets.symmetric(horizontal: 7),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: currdata[index].images.image,),
                  )),
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
            )
          ],
        ),
      ),
    );
  }
}
class data {
  final String whatsappChannelNames;
  final String whatsappChannelSubtitles;
  final String times;
  final Image images;
  data( {required this.whatsappChannelNames, required this.whatsappChannelSubtitles,required this.times,required this.images});
}
