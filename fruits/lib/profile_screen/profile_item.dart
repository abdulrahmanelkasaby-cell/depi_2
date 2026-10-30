import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.icon,
    required this.text,
    this.end,
  });

  final IconData icon;
  final String text;
  final Widget? end;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Color(0xff804F1E), size: 30),
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Color(0xff804F1E),
        ),
      ),
      trailing:
          end ??
          Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff804F1E)),
    );
  }
}
