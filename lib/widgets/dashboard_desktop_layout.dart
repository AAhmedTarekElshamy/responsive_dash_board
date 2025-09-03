import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

import 'all_expenses.dart';
import 'custom_drawer.dart';
class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Row(
        children: [
          Expanded(
              flex: 280,
              child:CustomDrawer(),
              ),
         // SizedBox(width: 32,),

          Expanded(
            flex: 604,
            child:Column(
              children: [
                AllExpenses(),

                QuickInvoice(),
              ],
            ) ,//child: AllExpenses()
          ),
          Expanded(
            flex: 468,
            child: Center(
              child: Text(
                'Main Content Area',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
