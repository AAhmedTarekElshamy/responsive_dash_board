import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

import '../utils/app_styles.dart';
class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
      Text('All Expenses',style: AppStyles.styleSemiBold20(context),),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
