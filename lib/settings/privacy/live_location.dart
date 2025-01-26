import 'package:flutter/material.dart';
class LiveLocation extends StatelessWidget {
  const LiveLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Live Location",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/livelocation.png",height: 150,),
            Text("You aren't sharing your live location in any chats.",style: TextStyle(color:Colors.white,fontSize: 20),),
            SizedBox(height: 20,),
            Text("Live location requires background location.You can manage this on your device settings.",style: TextStyle(color:Colors.grey,fontSize: 15),),

          ],
        ),
      ),
    );
  }
}
