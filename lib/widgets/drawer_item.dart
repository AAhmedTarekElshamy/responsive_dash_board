import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel});
final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFFFFFF),
      elevation: 0,
      child: ListTile(
        leading:  FittedBox(
          fit: BoxFit.scaleDown,
          child: SvgPicture.asset(
            drawerItemModel.image,
            // height: 24 ,
            // width: 24,
          ),
        ),
        title:   Text(drawerItemModel.title,style:AppStyles.styleRegular16),

      ),
    );
  }
}
