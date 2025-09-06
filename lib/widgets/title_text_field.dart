import 'package:flutter/material.dart';

import '../models/title_field_model.dart';
import '../utils/app_styles.dart';
import 'custom_text_field.dart';
class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.titleTextField});
 final TitleFieldModel titleTextField;


  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleTextField.title,style: AppStyles.styleMedium16,),
       const SizedBox(height: 4,),
          CustomTextField(titleTextField:titleTextField,),

      ],
    );
  }
}
