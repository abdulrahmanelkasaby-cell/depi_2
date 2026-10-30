import 'package:flutter/material.dart';
import 'package:store_depi_3/core/helpers/app_button.dart';
import 'package:store_depi_3/core/helpers/app_field.dart';
import 'package:store_depi_3/widets/header_auth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(top:30,bottom: 12,left: 12,right: 12),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12,
            children: [
              HeaderAuth(title: 'Create New Account', header: 'Looks Like you dont an account \n or connect with social media network'),
              AppField(hintText: 'Name', icon:Icons.person),
              AppField(hintText: 'Email', icon:Icons.mail),
              AppField(hintText: 'PassWord', icon:Icons.lock_outline_rounded),
              AppField(hintText: 'ConfirmPassWord', icon:Icons.lock_outline_rounded),
              SizedBox(height: 20,),
              AppButton(onPressed:(){} , text: 'SignUp'),

            ],
        ),
        )
      ),
    );
  }
}
