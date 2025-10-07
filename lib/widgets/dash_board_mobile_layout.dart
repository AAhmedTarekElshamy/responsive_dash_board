import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice.dart';
import 'income_section.dart';
import 'my_cards_and_transaction_history.dart';
class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key, this.isMobileLayout= true});
  final bool  isMobileLayout;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(isMobileLayout: isMobileLayout,),
          const SizedBox(height: 24,),
          const MyCardsAndTransactionHistory(),
          const SizedBox(height: 24,),
          const IncomeSection(),
        ],
      ),
    );
  }
}
