import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  int size;
  final String text;
  final Color color;
   AppLargeText({Key? key,
     this.size=30,  // If you give size than no need to write required(same for all)..
     required this.text,
   this.color=Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
