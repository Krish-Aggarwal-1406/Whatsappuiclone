import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateChannelPage extends StatefulWidget {
  const CreateChannelPage({super.key});

  @override
  State<CreateChannelPage> createState() => _CreateChannelPageState();
}

class _CreateChannelPageState extends State<CreateChannelPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<data>currdata=[data(titles: 'Anyone can discover your channel', subtitles: 'Channels are public, so anyone can find them and see 30 days of history', icons: FaIcon(
      FontAwesomeIcons.earthAsia,
      color: Colors.white,
    ),),
      data(titles: 'People see  your channel, not you', subtitles: 'Followers can\'t see your phone number,profile picture or name,but other admins can', icons: FaIcon(
        FontAwesomeIcons.eyeSlash,
        color: Colors.white,
      ),),
      data(titles: 'You\'re responsible for your channel', subtitles: 'Your channel needs to follow our guidelines and is reviewed against them', icons: FaIcon(
        FontAwesomeIcons.shield,
        color: Colors.white,
      ),)];
      return Scaffold(
        backgroundColor: Color(0xFF0B141B),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(

            children: [
              Image(
                image: AssetImage(
                  "assets/Screenshot_2024-11-20_111907-removebg-preview.png",
                ),
                height: size.height * .2,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Create a channel to reach',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Align(alignment: Alignment.center,
                child: Text(
                  'unlimited followers',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView.builder(itemCount: currdata.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>ListTile(
                       leading: currdata[index].icons,
                       title:Text(currdata[index].titles,style: TextStyle(color: Colors.white),) ,
                       subtitle:Text(currdata[index].subtitles,style: TextStyle(color: Colors.grey)) ,
                )),
              )

            ],
          ),
        ),
      );
  }
}
class data {
  final String titles;
  final String subtitles;
  final FaIcon icons;
  data( {required this.titles, required this.subtitles,required this.icons});
}