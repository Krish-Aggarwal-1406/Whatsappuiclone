import 'package:flutter/material.dart';

// Custom Switch Toggle Widget
class ToggleSwitch extends StatefulWidget {
  final bool initialValue;  // The initial value for the switch

  // Constructor to accept the initial value only
  const ToggleSwitch({
    Key? key,
    required this.initialValue, // Initial value of the switch (true/false)
  }) : super(key: key);

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  late bool _isOn;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialValue; // Set the initial state of the switch
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isOn, // The current state of the switch
      onChanged: (bool newValue) {
        setState(() {
          _isOn = newValue; // Update the switch state
        });
      },
      activeColor: Color(0xFF0B141B),
      activeTrackColor: Colors.green,
      inactiveThumbColor: Colors.grey,
      inactiveTrackColor:Color(0xFF0B141B) ,
    );
  }
}
