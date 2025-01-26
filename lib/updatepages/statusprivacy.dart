import 'package:flutter/material.dart';
class StatusPrivacy extends StatefulWidget {
  const StatusPrivacy({super.key});

  @override
  State<StatusPrivacy> createState() => _StatusPrivacyState();
}

class _StatusPrivacyState extends State<StatusPrivacy> {
  int _selectedvalue=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar:AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF0B141B),
          title: Text(style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize:23,
              color: Colors.white
          ),textAlign: TextAlign.left,'Status Privacy'),
      ),
      body:Column(

        children: [

          Container(alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30),
              child: Text('Who can see my status updates',style: TextStyle(color: Colors.grey,fontSize: 14),)),
          ListView(shrinkWrap: true,
            children: [
            RadioListTile(activeColor: Colors.green,
                title: Text('My Contacts',style: TextStyle(color: Colors.white,fontSize: 17),),
                value: 1, groupValue: _selectedvalue, onChanged: (value){
              setState(() {
                _selectedvalue=value!;
              });
            }),
            RadioListTile(activeColor: Colors.green,
                title: Text('My Contacts except...',style: TextStyle(color: Colors.white,fontSize: 17),),
                secondary: Text('0 excluded',style: TextStyle(color: Colors.green,fontSize: 15),),

                value: 2, groupValue: _selectedvalue, onChanged: (value){
                  setState(() {
                    _selectedvalue=value!;
                  });
                }),
            RadioListTile(activeColor: Colors.green,
                title: Text('Only share with...',style: TextStyle(color: Colors.white,fontSize: 17),),
                secondary: Text('0 included',style: TextStyle(color: Colors.green,fontSize: 15),),

                value: 3, groupValue: _selectedvalue, onChanged: (value){
                  setState(() {
                    _selectedvalue=value!;
                  });
                }),
          ],),
          Text('Changes to your privacy settings won\'t affect status\n updates that you\'ve sent already ',style: TextStyle(color: Colors.grey,fontSize: 14),)
        ],
      )
    );
  }
}
