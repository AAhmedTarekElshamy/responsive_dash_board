import 'package:flutter/material.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item.dart';
import 'all_expenses_items_list_view.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key, required this.isMobileLayout});
final bool isMobileLayout ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only( top:!isMobileLayout ? 12.0: 0, left: 20,bottom: 12),
      child: const CustomBackgroundContainer(
        child: Column(
          children: [
            AllExpensesHeader(),

            Padding(
              padding: EdgeInsets.only(top: 5.0 ),
              child: AllExpensesItemsListView(),
            ),
          ],
        ),
      ),
    );
  }
}
