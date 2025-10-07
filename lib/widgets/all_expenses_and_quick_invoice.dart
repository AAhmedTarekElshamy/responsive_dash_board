import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

import 'all_expenses.dart';
class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key, required this.isMobileLayout});
 final bool isMobileLayout;
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
    AllExpenses(isMobileLayout: isMobileLayout,),

    const QuickInvoice(),
    ],
    ) ;
  }
}
