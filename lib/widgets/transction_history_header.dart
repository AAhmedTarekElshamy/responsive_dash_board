import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('Transaction History',style: AppStyles.styleSemiBold20,),
                const Spacer(),
                Text('See all',style: AppStyles.styleMedium16.copyWith(color: const Color(0xff4EB7F2)),),

              ],
            ),
            const SizedBox(height: 5),
            Text('13 April 2022',style: AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),),
          ],
        ),
      ),
    ) ;
  }
}
