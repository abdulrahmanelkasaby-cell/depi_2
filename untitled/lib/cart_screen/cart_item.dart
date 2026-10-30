import 'package:flutter/material.dart';

import '../details_screen/counter.dart';


class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.unit,
  });

  final String image;
  final String name;
  final num price;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, height: 70, width: 100),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff6D3805),
                ),
              ),
              Counter(),
            ],
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(
                    "\$$price ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff6D3805),
                    ),
                  ),
                  Text(
                    unit,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff6D3805),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
