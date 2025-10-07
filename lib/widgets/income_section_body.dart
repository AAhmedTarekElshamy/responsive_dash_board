import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import 'detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .sizeOf(context)
        .width;
   //debugPrint("Screen width: $width");


    return width >= SizeConfig.desktop && width < 1350        //SizeConfig.desktop=1200
        ? const Padding(
          padding: EdgeInsets.all(16),
          child: DetailedIncomeChart(),
        )
        : const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        SizedBox(
          width: 5,
        ),
        Expanded(child: IncomeDetails()),
      ],
    );
  }
}