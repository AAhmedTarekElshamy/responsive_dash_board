import 'package:flutter/material.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item.dart';
import 'all_expenses_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white,
        ),
        child: const Column(
          children: [
            AllExpensesHeader(),

            Padding(
              padding: EdgeInsets.only(top: 16.0 ),
              child: AllExpensesItemsListView(),
            ),
          ],
        ),
      ),
    );
  }
}
