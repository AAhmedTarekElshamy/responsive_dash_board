import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';

import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensessItemModel> ExpensesItemsList = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              allExpensessItemModel: ExpensesItemsList[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              allExpensessItemModel: ExpensesItemsList[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              allExpensessItemModel: ExpensesItemsList[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    // Row(
    //   children: ExpensesItemsList.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     if (index == 1) {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             updateIndex(index);
    //           },
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 12),
    //             child: AllExpensesItem(
    //               allExpensessItemModel: item,
    //               isSelected: selectedIndex == index,
    //             ),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             updateIndex(index);
    //           },
    //           child: AllExpensesItem(
    //             allExpensessItemModel: item,
    //             isSelected: selectedIndex == index,
    //           ),
    //         ),
    //       );
    //     }
    //   }).toList(),
    // );
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

  void updateIndex(int index) {
    setState(() {
      if (selectedIndex != index) {
        selectedIndex = index;
      }
    });
  }
}
