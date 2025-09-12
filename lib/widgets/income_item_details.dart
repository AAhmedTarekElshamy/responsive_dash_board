import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import '../utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color ?? const Color(0xff208CC8),
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular12.copyWith(color:const Color(0xff064061) ),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style:AppStyles.styleRegular12.copyWith(color:const Color(0xff208CC8),
      ),
    ));
  }
}
