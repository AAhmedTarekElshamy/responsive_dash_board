import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

import 'dash_board_mobile_layout.dart';
import 'income_section.dart';
import 'my_cards_and_transaction_history.dart';
class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32,),
        Expanded(flex: 3,child: DashBoardMobileLayout(isMobileLayout: false,)),
        SizedBox(width: 32,),
      ],
    );
  }
}
