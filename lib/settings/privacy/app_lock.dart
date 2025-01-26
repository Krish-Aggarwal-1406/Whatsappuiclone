import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/toggle_button.dart';
class AppLock extends StatefulWidget {
  const AppLock({super.key});

  @override
  State<AppLock> createState() => _AppLockState();
}

class _AppLockState extends State<AppLock> {
  bool biometric = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Lock",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
          child:ListTile(
            title: Text ("Unlock with biometric",style: TextStyle(color: Colors.white),),
            subtitle: Text("When enabled you'll need to use fingerprint,face or other unique identifiers to open whatsapp.You can still answer calls if Whatsapp is locked",style: TextStyle(color: Colors.grey),),
            trailing: ToggleSwitch(initialValue: biometric),
          )
      ),
    );
  }
}
