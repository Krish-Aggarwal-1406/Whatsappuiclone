import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class AddAccount extends StatelessWidget {
  const AddAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("Krish Aggarwal",style: TextStyle(color: Colors.white,fontSize: 20)),
              subtitle: Text("+91 123456789"),
              leading: CircleAvatar(
                child: Image.asset("assets/fitness.jpg"),
              ),
              trailing: Icon(Icons.check_circle,color: Colors.green,),
            ),
            ListTile(
              title: Text("Add account",style: TextStyle(color: Colors.white,fontSize: 20)),
              leading: Icon(Icons.add,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
