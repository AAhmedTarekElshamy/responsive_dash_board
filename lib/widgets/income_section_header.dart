import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

import '../utils/app_styles.dart';
class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        Text('Income',style: AppStyles.styleSemiBold20(context),),
        const Spacer(),
        const RangeOptions(),
      ],
    );
  }
}
