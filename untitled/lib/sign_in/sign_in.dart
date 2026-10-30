import 'package:flutter/material.dart';


import '../Custom_App_field.dart';

import '../custom_app_button.dart';
import '../nav_bar/nav_bar.dart';
import '../sign_up/sign_up.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Color(0xffFF5E00),
        ),
        title: Text(
          "Sign In",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/signIn.png", height: 310),
              SizedBox(height: 60),
              Text(
                "Enter your Email and \npassword to access your account",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6D3805),
                ),
              ),
              SizedBox(height: 20),
              CustomAppField(hint: "Email"),
              SizedBox(height: 20),
              CustomAppField(
                hint: "Password",
                suffix: Icon(
                  Icons.visibility_outlined,
                  color: Color(0xffFF5E00),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Forgot Password",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFF5E00),
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomAppButton(
                text: "Sign in",
                action: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7F4E1D),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFF5E00),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
