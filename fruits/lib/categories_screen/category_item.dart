import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.text,
    required this.color,
  });

  final String image;
  final String text;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Color(color),
            child: Image.asset(image),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0xff6D3805),
            ),
          ),
        ],
      ),
    );
  }
}
