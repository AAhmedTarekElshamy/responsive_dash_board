import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';

import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});

  static const List<AllExpensessItemModel> ExpensesItemsList = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: ExpensesItemsList.asMap().entries.map((e){
        int index= e.key;
        var item = e.value;
        if(index == 1){
          return Expanded(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(allExpensessItemModel: item,),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(allExpensessItemModel: item,));
        }
      }).toList(),
    );
    // map((e) => Expanded(
    //   child: AllExpensesItem(
    //     allExpensessItemModel: e,
    //   ),
    // )).toList(),
    //
    // //
    //
    //
    //   ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //     itemCount: ExpensesItemsList.length,
    //     itemBuilder: (context, index) {
    //   return AllExpensesItem(
    //     allExpensessItemModel: ExpensesItemsList[index],
    //   );
    // });
  }
}
