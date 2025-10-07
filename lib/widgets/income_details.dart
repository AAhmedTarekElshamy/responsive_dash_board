import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';

import '../models/item_details_model.dart';
import '../utils/app_styles.dart';
import 'income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemDetailsModel(
        title: 'Design service', color: Color(0xff208CC8), value: "40%"),
    ItemDetailsModel(
        title: 'Design product', color: Color(0xff4EB7F2), value: "25%"),
    ItemDetailsModel(
        title: 'Product royalti', color: Color(0xff064061), value: "20%"),

    ItemDetailsModel(title: 'Other', color: Color(0xffE2DECD), value: "22%"),

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e)=>IncomeItemDetails( itemDetailsModel:e)).toList(),
    );


    //   ListView.builder(
    //   padding: const EdgeInsets.only(top: 2),
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context,index) =>IncomeItemDetails(itemDetailsModel: items[index],),
    //  // scrollDirection: Axis.vertical,
    //
    // );
  }
}

