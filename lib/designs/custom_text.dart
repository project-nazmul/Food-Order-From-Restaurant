import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.fs,required this.fw,required this.clr,required this.text}) : super(key: key);

  final Color clr;
  final FontWeight fw;
  final double fs;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      color: clr,
      fontWeight: fw,
      fontSize: fs
    ),);
  }
}
