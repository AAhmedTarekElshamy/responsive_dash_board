import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

import '../models/transction_model.dart';
class TransactionHistoryListview extends StatelessWidget {
  const TransactionHistoryListview({super.key});
static const List<TransactionModel> items = [
  TransactionModel(title: 'Cash Withdrawal', date: '13 Apr, 2022 ', amount: '\$20,129', isWithdrawal: true),
  TransactionModel(title: 'Landing Page project', date: '13 Apr, 2022 at 3:30 PM', amount: '\$2,000', isWithdrawal: false),
  TransactionModel(title: 'Juni Mobile App project', date: '13 Apr, 2022 at 3:30 PM', amount: '\$20,129', isWithdrawal: false),

];
  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
    itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context,index)=>TransactionItem(transactionModel: items[index],),

    );
  }
}
