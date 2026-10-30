import 'package:flutter/material.dart';
import 'package:store_depi_3/core/helpers/constans.dart';

class AppField extends StatelessWidget {
  const AppField({super.key,
    required this.hintText,
    required this.icon,
    this.suffixIcon,
    this.controller,
    this.obscureText=false});
 final String hintText;
 final IconData icon;
 final Widget? suffixIcon;
 final TextEditingController? controller;
 final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        hintText:hintText,
        filled: true,
        fillColor: Colors.grey.shade100,
        prefixIcon: Icon(icon,color: AppConstants.primaryColor,size: 20,),
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color:AppConstants.primaryColor)
        ),
        focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color:AppConstants.primaryColor),
      ),),
    );
  }
}
