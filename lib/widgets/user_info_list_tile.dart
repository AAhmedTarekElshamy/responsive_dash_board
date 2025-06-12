import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      height: 80,
      width: double.infinity,
      child: ListTile(
        leading: SvgPicture.asset(
          userInfoModel.image,
          height: 38.75,
          width: 36.97,
        ),
        title: Text(userInfoModel.title, style: AppStyles.styleRegular16),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
