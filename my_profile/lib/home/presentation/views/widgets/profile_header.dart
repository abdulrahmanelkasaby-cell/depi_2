
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/img.png',  width: 156,
          height: 156,),
        const SizedBox(height: 20),
        Text('Student', style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),),
        const SizedBox(height: 6),
        Text('Computer Science Department',  style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF6B7A90),
        ),),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFE3EEFD),
            borderRadius: BorderRadius.circular(20),

          ),
          child: Text(  '3rd year',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.blue,
              fontWeight: FontWeight.w500,),
          ),

        ),
      ],
    );
  }
}
