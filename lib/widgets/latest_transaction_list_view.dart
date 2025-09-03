import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import '../utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static var items = [
    const UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    const UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'JoshNunito@gmail.com'),
    const UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi ',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((item) => IntrinsicWidth(
                  child: UserInfoListTile(userInfoModel: item),
                ))
            .toList(),
      ),
    );
  }
}

// SizedBox(
//   height: 80 ,
//   child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: items.length,
//       itemBuilder: (context,index)=>IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index])),
//
//
//   ),
// );
