import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/transction_history_header.dart';

import '../utils/app_styles.dart';
class TransationHistory extends StatelessWidget {
  const TransationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransctionHistoryHeader(),
        const SizedBox(height: 20),
        Text('13 April 2022',style: AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),),
        const SizedBox(height: 16),


      ],
    );
  }
}
