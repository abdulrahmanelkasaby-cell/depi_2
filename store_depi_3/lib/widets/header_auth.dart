import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderAuth extends StatelessWidget {
  const HeaderAuth({super.key, required this.title, required this.header});
 final String title;
 final String header;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image.network('src',height: 150,),
          Text(title),
          Text('dhb',
            textAlign: TextAlign.center
            ,style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 14,color: Colors.grey.shade300),)
        ],);
  }
}
