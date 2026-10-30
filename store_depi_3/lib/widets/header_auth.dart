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
          SizedBox(height: 30),
          Image.asset('assets/images/img.png',height: 150,),
          Text(title,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),),
          Text(header,
            textAlign: TextAlign.center
            ,style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18,color: Colors.grey.shade300),)
        ],);
  }
}
