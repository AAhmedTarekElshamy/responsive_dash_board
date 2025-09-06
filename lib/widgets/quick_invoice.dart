import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';


import 'custom_text_field.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(  left: 15,bottom: 2),
      child: CustomBackgroundContainer(
          child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 10,),
          LatestTransaction(),
          Divider(height: 24,color: Color(0xffF1F1F1),),
          SingleChildScrollView(child: QuickInvoiceForm()),



        ],
      )),
    );
  }
}
