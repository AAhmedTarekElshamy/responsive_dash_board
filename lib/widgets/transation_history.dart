import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/transaction_history_list-view.dart';
import 'package:responsive_dash_board/widgets/transction_history_header.dart';

import '../utils/app_styles.dart';
class TransationHistory extends StatelessWidget {
  const TransationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransctionHistoryHeader(),
        SizedBox(height: 9),
        TransactionHistoryListview(),

      ],
    );
  }
}
