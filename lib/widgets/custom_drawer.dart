import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'drawer_item.dart';
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
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            UserInfoListTile(userInfoModel: userInfoModel),
            SizedBox(
              height: 28,
            ),
            DrawerItem(),

          ],
        ),
      ),
    );
  }
}
