import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.all(2),
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4),
        borderRadius: BorderRadiusGeometry.circular(30),
      ),
      width: 100,
      height: 30,
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
              radius: 13,
              backgroundColor: Colors.white,
              child: Icon(Icons.remove, color: Color(0xff6D3805)),
            ),
          ),
          Text(
            "$count",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
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
              radius: 13,
              backgroundColor: Colors.white,
              child: Icon(Icons.add, color: Color(0xff6D3805)),
            ),
          ),
        ],
      ),
    );
  }
}
