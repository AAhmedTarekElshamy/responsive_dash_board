import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backColor, required this.txtColor});
final Color backColor;
final Color txtColor;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 52,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
           elevation: 0,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12),
           ),
           backgroundColor:backColor ?? const Color(0xff4EB7F2) ,
         ),
          onPressed: (){},
          child:  Text('Send Money',style: AppStyles.styleSemiBold18(context).copyWith(color:txtColor?? const Color(0xffFFFFFF ) ) ,)


      ),
    );
  }
}
