import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';
class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, this.DrawerItemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFFFFFF),
      elevation: 0,
      child: ListTile(
        leading:  FittedBox(
          child: SvgPicture.asset(
            Assets.imagesDashboard,
            height: 38.75,
            width: 36.97,
          ),
        ),
        title: const Text('Dashboard',style:AppStyles.styleBold16),

      ),
    );
  }
}
