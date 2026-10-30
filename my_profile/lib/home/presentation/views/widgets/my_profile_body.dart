
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/home/presentation/views/widgets/custom_list_tile.dart';
import 'package:my_profile/home/presentation/views/widgets/profile_header.dart';
import 'package:my_profile/home/presentation/views/widgets/profile_screen_card.dart';
import 'package:my_profile/home/presentation/views/widgets/skill_widget.dart';

import 'custom_button.dart';



class MyProfileBody extends StatelessWidget {
  const MyProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: const[
           SizedBox(height: 24),
           ProfileHeader(),
           SizedBox(height: 10,),
           ProfileSectionCard(
          icon: Icon(Icons.person, color: Colors.blue, size: 28),
          title: 'Contact Information',
          child: Column(
            children: [
              CustomListTile(icon: Icons.email, title: 'Email', subtitle: 'exmaple@university.edu'),
              CustomListTile(icon: Icons.phone, title: 'Phone', subtitle: '+20 123 456 7890'),
            ],
          ),
        ),
           SizedBox(height: 10,),
           ProfileSectionCard(
        icon: Icon(Icons.star_border, color: Colors.blue, size: 28),
        title: 'Skills',
        child: Row(
          spacing: 8,
          children: [
            SkillWidget(icon: FaIcon(FontAwesomeIcons.flutter, color: Colors.blue), label: 'Flutter'),
            SkillWidget(icon: FaIcon(FontAwesomeIcons.python, color: Colors.blue), label: 'Python'),
            SkillWidget(icon: Icon(Icons.palette, color: Colors.blue), label: 'Ui Design'),
          ],
        ),
      ),
           SizedBox(height: 20,),
           CustomButton(),

        ],)
    );
  }
}
