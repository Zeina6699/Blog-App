import 'package:blog_app/core/theme/constants.dart';
import 'package:blog_app/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey=GlobalKey<FormState>();
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //formkey.currentState!.validate();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key:formkey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Text('Sign Up',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
            const SizedBox(height: 25),
   CustomTextFormField(hintText: 'Name',controller:nameController),
            const SizedBox(height: 15),
        CustomTextFormField(hintText: 'Email',controller: emailController,),
            const SizedBox(height: 15),
             CustomTextFormField(isObscure: true, hintText:'Password',controller: passwordController),
            const SizedBox(height: 25),
            const CustomElevatedButton(),
            const SizedBox(height: 15),
           RichText(text:TextSpan(
              text: "Don't have an account ?  ",
              style: Theme.of(context).textTheme.titleMedium,
              children: [
                TextSpan(
                text: 'Sign In',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: MyColor.gradient2,
                  fontWeight: FontWeight.bold
                                ))]))]),
        )));}}