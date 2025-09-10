import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.only(right: 24),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground),fit: BoxFit.fill),
          color: const Color(0xff4EB7F2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
              subtitle: const Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesCardSmall),
            ),
            const Expanded(child: SizedBox()),
               Text(
                 '0918 8124 0042 8129',
                 style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
               ),
               const SizedBox(height:8,),

                   Text('12/20 - 124',style: AppStyles.styleRegular16.copyWith(color: Colors.white),),
               const SizedBox(height:27,),


          ],
        ),
      ),
    );
  }
}
