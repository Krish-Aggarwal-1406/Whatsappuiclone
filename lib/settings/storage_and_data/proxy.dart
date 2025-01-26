import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappui/widgets/grey_text.dart';

import '../../widgets/white_text.dart';
class ProxyPage extends StatelessWidget {
  const ProxyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: WhiteText(text: 'Proxy'),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: WhiteText(text: "Use proxy"),
              subtitle: GreyText(text: "Only use a proxy if your'e unable to connect to Whatsapp.Your IP address may be visible to the proxy provider,which is not Whatsapp"),
            ),
            Text("Learn More",style: TextStyle(color: Colors.blue),),
            Divider(color: Colors.grey,),
            ListTile(
              title: WhiteText(text: "Set up proxy"),
            ),
          ],
        ),
      ),
    );
  }
}
