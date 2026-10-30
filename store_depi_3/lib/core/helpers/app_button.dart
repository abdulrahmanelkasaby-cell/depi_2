import 'package:flutter/material.dart';
import 'package:store_depi_3/core/helpers/constans.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed, required this.text});
 final void Function() onPressed;
 final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
         style: ElevatedButton.styleFrom(
           backgroundColor: AppConstants.primaryColor,
             fixedSize: Size.fromHeight(55)
         ),
        child: Text(text,style: TextStyle(color:Colors.white,)
        ));
  }
}
