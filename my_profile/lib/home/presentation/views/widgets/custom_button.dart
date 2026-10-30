import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width:250,
        height: 54,
        child: ElevatedButton.icon(
          onPressed: (){},
          icon: const Icon(Icons.person_outline_rounded, size: 26,color: Colors.white),
          label: const Text(
            'About Me',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1F6FE5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}