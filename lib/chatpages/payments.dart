import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Change the back button color here
        ),
        title: Text(
          'Payments',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.currency_rupee,
                color: Colors.green,
              ),
              title: Text(
                'Send Payment',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.qr_code_sharp,
                color: Colors.green,
              ),
              title: Text(
                'Scan any UPI QR code',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Chat with businesses ",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align the row
              children: [
                businessIcon("Delhi\ntrans.."),
                businessIcon("Mumbai\ntrans.."),
                businessIcon("Nagpur\nmetro"),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 35,
                  child: Icon(
                    Icons.person_search,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "History",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                )),
            SizedBox(height: 10),
            Icon(Icons.history, color: Colors.grey, size: 50),
            SizedBox(height: 10),

            Text("No payment history",style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Payment methods",
                  style: TextStyle(color: Colors.green, fontSize: 18),
                )),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 100,
              decoration: BoxDecoration(
                color: Color(0xFF343A40),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.privacy_tip, color: Colors.green, size: 30),
                  SizedBox(width: 10),
                 Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("To protect your security,Whatsapp does not store \nyour UPI PIN or full bank account number",style: TextStyle(color: Colors.white),),
                     Text("Learn more",style: TextStyle(color: Colors.green),),
                   ],
                 )

                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_circle_outline,
                color: Colors.grey,
              ),
              title: Text(
                'Add payment method',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.question_mark,
                color: Colors.grey,
              ),
              title: Text(
                'Help',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.delete,
                color: Colors.white,
              ),
              title: Text(
                'Remove payments information',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget businessIcon(String name) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Ensures the column takes minimum space
      children: [
        SizedBox(height: 40),
        Stack(
          clipBehavior: Clip.none, // Ensures the blue tick is not clipped
          children: [
            // Circle Avatar
            CircleAvatar(
              backgroundColor: Color(0xFF343A40),
              radius: 35,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ), // Your image URL here
            ),
            // Verified Blue Tick
            Positioned(
              bottom: 5,
              right: 5,
              child: Icon(
                Icons.verified,
                color: Colors.blue,
                size: 20,
              ),
            ),
          ],
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
