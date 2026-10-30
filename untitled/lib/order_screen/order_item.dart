import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.order,
    required this.state,
    required this.style,
    required this.date,
    required this.price,
  });

  final int order;
  final String state;
  final TextStyle style;
  final String date;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0xffF37A20),
            child: Icon(
              Icons.shopping_basket_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order #$order",
                style: TextStyle(
                  color: Color(0xff804F1E),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(state, style: style),
              Text(
                date,
                style: TextStyle(
                  color: Color(0xff804F1E),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            "\$$price",
            style: TextStyle(
              color: Color(0xffF37A20),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
