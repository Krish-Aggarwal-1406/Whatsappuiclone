import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  final String text;
  final double fontSize;

  const WhiteText({
    Key? key,
    required this.text,
    this.fontSize = 17,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
    );
  }
}
