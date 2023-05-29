import 'package:flutter/material.dart';

class MyColorTitle extends StatelessWidget {
   String title;
   TextAlign? textAlign;

   MyColorTitle({required this.title, this.textAlign});

   @override
  Widget build(BuildContext context) {
    return Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      );
  }
}
