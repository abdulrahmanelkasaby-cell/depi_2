import 'package:flutter/material.dart';

class CustomAppField extends StatelessWidget {
  final String hint;
  final Widget? suffix;

  const CustomAppField({super.key, required this.hint, this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffix,
        filled: true,
        fillColor: Color(0xffF3F3F3),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF3F3F3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFF5E00)),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xffAC8E71),
        ),
      ),
    );
  }
}
