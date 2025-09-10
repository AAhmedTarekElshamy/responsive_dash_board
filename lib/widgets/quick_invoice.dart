import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';


import 'custom_divider.dart';
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
          CustomDivider(height: 24,),
          SingleChildScrollView(child: QuickInvoiceForm()),



        ],
      )),
    );
  }
}
