import 'package:flutter/material.dart';

import 'profile_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switcher = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Color(0xffFF5E00),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItem(icon: Icons.person, text: "Edit Profile"),
          ProfileItem(icon: Icons.key, text: "Change Password"),
          ProfileItem(icon: Icons.credit_card, text: "My Cards"),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "App Settings",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
                color: Color(0xffFF5E00),
              ),
            ),
          ),
          SwitchListTile(
            secondary: Icon(
              Icons.notifications,
              size: 30,
              color: Color(0xff804F1E),
            ),
            title: Text(
              "Notifications",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xff906233),
              ),
            ),
            activeTrackColor: Color(0xffFF5E00),
            value: switcher,
            onChanged: (bool newVal) {
              setState(() {
                switcher = newVal;
              });
            },
          ),
          ProfileItem(
            icon: Icons.g_translate,
            text: "Language",
            end: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "English",
                  style: TextStyle(
                    color: Color(0xff804F1E),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff804F1E)),
              ],
            ),
          ),
          ProfileItem(icon: Icons.logout, text: "Logout", end: SizedBox()),
        ],
      ),
    );
  }
}
