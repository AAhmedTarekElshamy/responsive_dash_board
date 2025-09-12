import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';

import '../utils/app_styles.dart';
class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Text('Income',style: AppStyles.styleSemiBold20,),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
