import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  final String text;
  final double fontSize;

  const GreyText({
    Key? key,
    required this.text,
    this.fontSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: fontSize,
      ),
    );
  }
}
