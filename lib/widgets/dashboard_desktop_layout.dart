import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

import 'all_expenses.dart';
import 'all_expenses_and_quick_invoice.dart';
import 'custom_drawer.dart';
import 'my_card.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Row(
        children: [
          Expanded(
            flex: 280,
            child: CustomDrawer(),
          ),
          // SizedBox(width: 32,),

          Expanded(
            flex: 604,
            child: AllExpensesAndQuickInvoice(), //child: AllExpenses()
          ),
          Expanded(
            flex: 468,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: MyCard(),
            ),
          ),
        ],
      ),
    );
  }
}
