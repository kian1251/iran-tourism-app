import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextText extends StatelessWidget {

  double size;
  final String text;
  final Color color;

  AppTextText(
      {super.key,
        required this.text,
        this.size = 16,
        this.color = Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      TextStyle(color: color, fontSize: size,),
    );
  }
}
