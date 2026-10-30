import 'package:flutter/material.dart';
import 'package:my_profile/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_profile/home/presentation/views/widgets/my_profile_body.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:CustomAppBar(),
      drawer: Drawer(),
      body: const MyProfileBody(),
    );
  }
}