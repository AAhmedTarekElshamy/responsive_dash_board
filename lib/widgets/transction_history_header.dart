import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Transaction History',style: AppStyles.styleSemiBold20,),
        const Spacer(),
        Text('See all',style: AppStyles.styleMedium16.copyWith(color: const Color(0xff4EB7F2)),),

      ],
    ) ;
  }
}
