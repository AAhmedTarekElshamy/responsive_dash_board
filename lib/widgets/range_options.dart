import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration:ShapeDecoration(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1,color: Color(0xFFF1F1F1)),
        ) ,
      ),
      child:   Row(children: [
        Text('Monthly',
          style: AppStyles.styleMedium16(context),),
        const SizedBox(width: 18,),
        const Icon(Icons.keyboard_arrow_down,color: Color(0xff064061),),
      ],),
    );
  }
}
