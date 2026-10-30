import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_depi_3/widets/header_auth.dart';

import 'core/helpers/app_button.dart';
import 'core/helpers/app_field.dart';

import 'core/helpers/constans.dart';
import 'login/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<LoginCubit, LoginState>(
  listener: (context, state) {
    if(state is LoginSuccess){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.green,content:Text('Login Success' )));
    }
    if(state is LoginFailure){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.red,content:Text(state.msg )));
    }
  },
  builder: (context, state) {
    final cubit =BlocProvider.of<LoginCubit>(context);
    if(state is LoginLoading){
      return Center(child: CircularProgressIndicator(
        color: AppConstants.primaryColor,),);
    }
    return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 30, bottom: 12, left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 12,
                children: [

                  HeaderAuth(title: 'Welcome Back', header: 'Log in to your account using email \nor social media'),
                  SizedBox(height: 10,),
                  AppField(
                      controller: cubit.emailControl,
                      hintText: 'Email', icon: Icons.mail),
                  AppField(
                    controller: cubit.passwordControl,
                      hintText: 'PassWord', icon: Icons.lock_outline_rounded),
                  Text('Forget Password',textAlign: TextAlign.end,style: TextStyle(color: AppConstants.primaryColor,fontSize: 14,fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  AppButton(onPressed: () {cubit.login();}, text: 'Login'),

                ],
              ),
            )
        );
  },
),
      ),
    );
  }
}
