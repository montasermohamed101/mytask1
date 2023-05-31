import 'package:flutter/material.dart';

class TextCheckbox extends StatelessWidget {

  String title;
  Color color;
  TextAlign? textAlign;
  double? size;
  TextCheckbox({required this.title,required this.color,this.textAlign,this.size});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
