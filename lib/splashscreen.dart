import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsappui/homepage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      body: Column(
        
        children: [
          SizedBox(height: 300,),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Center(child: FaIcon(FontAwesomeIcons.whatsapp,size: 100,color: Colors.white,),),
              
            ),
          ),
          SizedBox(height: 300,),
          Text('From',style: TextStyle(fontSize: 10,color: Colors.white),),
          Text('FACEBOOK',style: TextStyle(fontSize: 25,color: Colors.white),)
        ]
      ),
    );
  }
}
