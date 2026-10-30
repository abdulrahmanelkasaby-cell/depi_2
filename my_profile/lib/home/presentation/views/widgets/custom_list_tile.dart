import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Color(0xFFE3EEFD),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.blue,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.grey,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}