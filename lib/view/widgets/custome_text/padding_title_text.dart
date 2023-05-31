import 'package:flutter/material.dart';

class PaddingTitleText extends StatelessWidget {

  String title;
  Color color;
  TextAlign? textAlign;
  PaddingTitleText({required this.title,required this.color,this.textAlign});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
