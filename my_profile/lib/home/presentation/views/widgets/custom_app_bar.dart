

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
        AppBar(
          backgroundColor: const Color(0xFF1F6FE5),
          title: const Text(
            'My Profile',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
