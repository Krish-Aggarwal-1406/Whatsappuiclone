import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../widgets/grey_text.dart';
import '../../widgets/white_text.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WhiteText(text: "Whatsapp Messenger", fontSize: 25),
            GreyText(text: "Version 2.25.1.75"),
            SizedBox(height: 20),
            FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 100),
            SizedBox(height: 20),
            GreyText(text: "@ 2010-2025 WhatsApp Inc. "),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    "title",
                    "message"
                );
              },
              child: WhiteText(text: "Licenses"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff0B1014),
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
