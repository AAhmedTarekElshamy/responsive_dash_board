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
    return Card(
      color: const Color(0xffFAFAFA),
      // height: 80,
     elevation: 0,
      child: Center(
        child: ListTile(
          leading:SizedBox(
            width: 40,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                userInfoModel.image,
                height: 38.75,
               // width: 24, // Use a safe smaller width than the SizedBox width
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
