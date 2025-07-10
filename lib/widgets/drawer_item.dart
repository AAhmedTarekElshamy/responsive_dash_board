import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'active_and_inactive_drawer_item.dart';
class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel,required this.isActive});
final DrawerItemModel drawerItemModel;
final bool isActive ;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFFFFFF),
      elevation: 0,
      child:isActive? ActiveDrawerItem(drawerItemModel: drawerItemModel,):InActiveDrawerItem(drawerItemModel: drawerItemModel,),
    );
  }
}
