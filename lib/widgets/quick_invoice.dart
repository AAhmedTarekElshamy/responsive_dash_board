import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/title_field_model.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

import 'custom_text_field.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});
static   List<TitleFieldModel> textFieldList =[
  TitleFieldModel(title:'Customer name',hint:'Type customer name', ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(  left: 15,bottom: 10),
      child: CustomBackgroundContainer(
          child: Column(
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 10,),
          const LatestTransaction(),

          const Divider(height: 48,),
            TitleTextField(titleTextField:textFieldList[0],) ,


        ],
      )),
    );
  }
}
