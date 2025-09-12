import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'income_chart.dart';
import 'income_details.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:    const EdgeInsets.only(left: 15,right: 15),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white,
        ),
        child: const Column(
              children: [
        IncomeSectionHeader(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 5,),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ),
              ],
            ));
  }
}
