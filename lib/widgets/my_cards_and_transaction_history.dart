import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transation_history.dart';

import 'income_section.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: const EdgeInsets.only(left: 15,right: 15),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white,
        ),
        child: const Column(
          children: [
            MyCardsSection(),
            TransationHistory(),

          ],
        ),
      ),
    );
  }
}
