import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  final String text;
  final void Function()? action;

  const CustomAppButton({super.key, required this.text, this.action});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Color(0xffFF5E00)),
        fixedSize: WidgetStatePropertyAll(Size(340, 50)),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
