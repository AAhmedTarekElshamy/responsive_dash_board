
import 'package:flutter/material.dart';

import '../models/all_expensess_item_model.dart';

import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';
import 'in_active_&_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
        required this.allExpensessItemModel,
        required this.isSelected});
  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(
      allExpensessItemModel: allExpensessItemModel,
    )
        : InActiveAllExpensesItem(
      allExpensessItemModel: allExpensessItemModel,
    );
  }
}