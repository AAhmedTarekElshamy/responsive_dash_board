import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../models/title_field_model.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.titleTextField});
  final TitleFieldModel titleTextField;
  @override
  Widget build(BuildContext context) {
    return   TextField(
decoration: InputDecoration(
 fillColor: const Color(0xffFAFAFA),
  filled: true,
  hintText: titleTextField.hint,
  hintStyle: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
  border:buildBorder(),
  enabledBorder: buildBorder(),
  focusedBorder:  buildBorder(),
),
    );
  }


  OutlineInputBorder buildBorder(){
     return const OutlineInputBorder(
        borderSide: BorderSide(
        color: Color(0xffFAFAFA),
    ),
         borderRadius: BorderRadius.all(Radius.circular(12)),
    ) ;
  }


}
