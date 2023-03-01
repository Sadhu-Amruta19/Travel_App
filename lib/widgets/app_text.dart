import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  int size;
  final String text;
  final Color color;
  AppText({Key? key,
    this.size=16,  // If you give size than no need to write required(same for all)..
    required this.text,
    this.color=Colors.black, required String Text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: 32,

      ),
    );
  }
}