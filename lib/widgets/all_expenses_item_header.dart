import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackColor, this.imageColor});
  final String image;
  final Color? imageBackColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
              //maxHeight: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // height: 35,
                // width: 35,
                decoration: ShapeDecoration(
                  color: imageBackColor ?? const Color(0xffFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: imageColor == null ? const Color(0xff064061) : Colors.white,
        ),
      ],
    );
  }
}
