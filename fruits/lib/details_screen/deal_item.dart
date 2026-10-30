import 'package:flutter/material.dart';

class DealItem extends StatelessWidget {
  const DealItem({
    super.key,
    required this.image,
    required this.name,
    required this.weight,
    required this.price,
  });

  final String image;
  final String name;
  final String weight;
  final num price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsetsGeometry.fromLTRB(5, 20, 5, 0),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(10),
        boxShadow: List.filled(1, BoxShadow(blurRadius: 5, color: Colors.grey)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(image, height: 70),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xff6D3805),
            ),
          ),
          Text(
            weight,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xff929292),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ $price",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xffFF5E00),
                ),
              ),
              Icon(Icons.add_circle, size: 35, color: Color(0xff3AA14C)),
            ],
          ),
        ],
      ),
    );
  }
}
