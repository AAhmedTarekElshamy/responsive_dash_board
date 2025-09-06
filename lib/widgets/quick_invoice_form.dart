import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

import '../models/title_field_model.dart';
import 'custom_button.dart';
class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});
  static   List<TitleFieldModel> textFieldList =[
    TitleFieldModel(title:'Customer name',hint:'Type customer name', ),
    TitleFieldModel(title:'Customer Email',hint:'Type customer email', ),
    TitleFieldModel(title:'Item name',hint:'Type customer name', ),
    TitleFieldModel(title:'Item mount',hint:'USD', ),



  ];

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(titleTextField: textFieldList[0],)),
            const SizedBox(width: 16,),
            Expanded(child: TitleTextField(titleTextField: textFieldList[1],)),
          ],
        ),
        const SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextField(titleTextField: textFieldList[2],)),
            const SizedBox(width: 16,),
            Expanded(child: TitleTextField(titleTextField: textFieldList[3],)),
          ],
        ),
        const SizedBox(height: 24,),
        const Row(children: [
          Expanded(child: CustomButton(backColor: Color(0xffFFFFFF), txtColor: Color(0xff4EB7F2),)),
          SizedBox(width:24,),
          Expanded(child: CustomButton(backColor: Color(0xff4EB7F2),txtColor:  Color(0xffFFFFFF),)),
          SizedBox(width:24,),
        ],),

      ],
    );
  }
}
