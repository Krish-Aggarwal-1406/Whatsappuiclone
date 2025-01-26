import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/toggle_button.dart';
class PrivacyCalls extends StatefulWidget {
  const PrivacyCalls({super.key});

  @override
  State<PrivacyCalls> createState() => _PrivacyCallsState();
}

class _PrivacyCallsState extends State<PrivacyCalls> {
  bool silenceCalls = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF0B141B),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        child:ListTile(
          title: Text ("Silence unknown callers",style: TextStyle(color: Colors.white),),
          subtitle: Column(
            children: [
              Text("Calls from unknown numbers will be silenced.They will still be shown in the Calls tab and in your notifications",style: TextStyle(color: Colors.grey),),
              Text ("Learn more",style: TextStyle(color: Colors.blue),)
            ],
          ),
          trailing: ToggleSwitch(initialValue: silenceCalls),
        )
      ),
    );
  }
}
