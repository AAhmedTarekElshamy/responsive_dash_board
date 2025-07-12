import 'package:flutter/material.dart';

import '../models/all_expensess_item_model.dart';

import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensessItemModel});
  final AllExpensessItemModel allExpensessItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            AllExpensesItemHeader(
              image: allExpensessItemModel.image,
           ),
          const SizedBox(height: 34,),
          Text(allExpensessItemModel.title,style: AppStyles.styleMedium16 ,),
          const SizedBox(height: 16,),
          Text(allExpensessItemModel.date,style: AppStyles.styleRegular14 ,),
          const SizedBox(height: 16,),
          Text(allExpensessItemModel.price,style: AppStyles.styleSemiBold24 ,),


        ],
      ),
    );
  }
}
