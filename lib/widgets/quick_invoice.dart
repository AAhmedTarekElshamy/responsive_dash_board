import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(  left: 20,bottom: 24),
      child: CustomBackgroundContainer(
          child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 16,),
          LatestTransaction(),



        ],
      )),
    );
  }
}
