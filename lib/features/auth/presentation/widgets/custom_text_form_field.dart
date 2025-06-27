import 'package:blog_app/core/theme/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.isObscure=false,required this.hintText, required this.controller});
final  String? hintText;
final bool isObscure;
final TextEditingController controller;
 static  border(Color color)=>OutlineInputBorder(
     borderRadius: BorderRadius.circular(10),
     borderSide: BorderSide(color:color,width: 3));
  @override
  Widget build(BuildContext context) {
   
    return TextFormField(
      obscuringCharacter: '+',
      obscureText: isObscure,
      controller: controller,
      validator: (value){
        if(value!.isEmpty){return '$hintText is missing';}
        else {return null;}
      },
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.all(27),
        enabledBorder: border(MyColor.borderColor),
        focusedBorder: border(MyColor.gradient2),
        hintText: hintText
      ));}}