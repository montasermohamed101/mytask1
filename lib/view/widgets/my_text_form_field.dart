import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  TextEditingController controller;

  MyTextFormField({required this.controller, this.hintText,this.hintStyle});

  String? hintText;
  TextStyle? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        isDense: true,
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: hintStyle
      ),
    );
  }
}
