import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import '../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
        // height: 24 ,
        // width: 24,
      ),
      title: Text(drawerItemModel.title, style: AppStyles.styleRegular16),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FittedBox(
        fit: BoxFit.scaleDown,
        child: SvgPicture.asset(
          drawerItemModel.image,
          // height: 24 ,
          // width: 24,
        ),
      ),
      title: Text(drawerItemModel.title,
          style: AppStyles.styleRegular16
              .copyWith(color: const Color(0xff4EB7F2))),
      trailing: Container(
        // height: 48,
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
