import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../models/drawer_item_model.dart';
import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'drawer_item.dart';
import 'drawer_item_list.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const UserInfoModel userInfoModel = UserInfoModel(
    image: Assets.imagesAvatar3,
    title: 'Lekan Okeowo',
    subTitle: 'demo@gmail.com',
  );



  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const UserInfoListTile(userInfoModel: userInfoModel),
            const SizedBox(
              height: 8,
            ),
            DrawerItemListView(),
          ],
        ),
      ),
    );
  }
}
