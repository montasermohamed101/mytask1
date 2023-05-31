import 'package:flutter/material.dart';

class TextCheckbox extends StatelessWidget {

  String title;
  Color color;
  TextAlign? textAlign;
  double? fontSize;
  TextDirection? textDirection;


  TextCheckbox({required this.title,required this.color,this.textAlign,this.fontSize,this.textDirection});

  @override
  Widget build(BuildContext context) {
    return  Expanded(

      child: Text(
        title,
        textDirection: textDirection,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
