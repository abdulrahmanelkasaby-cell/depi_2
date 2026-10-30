import 'package:flutter/material.dart';

class BigCounter extends StatefulWidget {
  const BigCounter({super.key});

  @override
  State<BigCounter> createState() => _BigCounterState();
}

class _BigCounterState extends State<BigCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(5),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4),
        borderRadius: BorderRadiusGeometry.circular(30),
      ),
      width: 280,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (count > 0) {
                  count--;
                }
              });
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(Icons.remove, color: Color(0xff6D3805)),
            ),
          ),
          Text(
            "$count",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Color(0xff6D3805),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(Icons.add, color: Color(0xff6D3805)),
            ),
          ),
        ],
      ),
    );
  }
}
