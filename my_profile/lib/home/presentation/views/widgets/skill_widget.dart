import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key, required this.icon, required this.label});
  final Widget icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFE3EEFD),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
         icon,
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
