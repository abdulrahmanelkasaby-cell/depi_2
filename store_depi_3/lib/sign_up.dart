import 'package:flutter/material.dart';
import 'package:store_depi_3/core/helpers/app_button.dart';
import 'package:store_depi_3/core/helpers/app_field.dart';

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
              Image.network('src',height: 150,),
              Text('dhb',
                textAlign: TextAlign.center
                ,style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 14,color: Colors.grey.shade300),),

              //namefield

              AppField(hintText: 'Name', icon:Icons.person),
              AppField(hintText: 'Email', icon:Icons.mail),
              AppField(hintText: 'PassWord', icon:Icons.lock_outline_rounded),
              AppField(hintText: 'ConfirmPassWord', icon:Icons.lock_outline_rounded),
              AppButton(onPressed:(){} , text: 'SignUp'),

            ],
        ),
        )
      ),
    );
  }
}
