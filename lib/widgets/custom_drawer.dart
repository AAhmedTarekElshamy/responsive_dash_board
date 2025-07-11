import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../models/drawer_item_model.dart';
import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'drawer_item.dart';
import 'drawer_item_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const UserInfoModel userInfoModel = UserInfoModel(
    image: Assets.imagesAvatar3,
    title: 'Lekan Okeowo',
    subTitle: 'demo@gmail.com',
  );



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: const Color(0xffFFFFFF),
        child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: UserInfoListTile(userInfoModel: userInfoModel),
              ),

              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),
              DrawerItemListView(),

              //const Expanded(child: SizedBox()),
              const SliverFillRemaining(
                hasScrollBody: false,
                child:Column(
                  children: [
                    Expanded(child: SizedBox(height: 20)),
                    InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Setting system', image: Assets.imagesSettings)),
                    SizedBox(height: 20,),
                    InActiveDrawerItem(drawerItemModel: DrawerItemModel(title: 'Logout account', image: Assets.imagesLogout)),
                    SizedBox(height: 25,),
                  ],
                ),
              ),

            ],
          ),

      ),
    );
  }
}
