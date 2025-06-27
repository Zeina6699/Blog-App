import 'package:blog_app/core/theme/constants.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient:const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors:[
          Colors.purple,
          Colors.pink
        ] )),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColor.transparentColor,
          shadowColor: MyColor.transparentColor,
          fixedSize:const Size(395,55)),
        onPressed: (){} ,
        child:const Text('Sign Up',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600))),
    );}}