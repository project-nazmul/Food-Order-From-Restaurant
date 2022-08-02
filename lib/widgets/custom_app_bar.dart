import 'package:flutter/material.dart';
import 'package:food_order/data/data.dart';
import 'package:food_order/designs/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepOrangeAccent,
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.person,color: Colors.deepOrangeAccent,),
        ),
      ),
      title: CustomText(fs: 22, fw: FontWeight.bold, clr: Colors.white, text: 'Food Order'),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15,right: 10),
          child: CustomText(fs: 20, fw: FontWeight.normal, clr: Colors.white, text: '(${currentUser.cart!.length})'),
        )
      ],
    );
  }
}
