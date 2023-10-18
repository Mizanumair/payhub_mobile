import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/strings.dart';

import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';

class CustomHomeContainer extends StatelessWidget {
  const CustomHomeContainer({
    Key? key,
    required this.image,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String image;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height_90,
        //width: width_100,
        decoration: BoxDecoration(
            color: AppColors.greyColor.withOpacity(.2),
            borderRadius: BorderRadius.circular(radius_15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: width_60,
            ),
            CustomDivider(
              height: height_8,
            ),
            CustomText(
                textAlign: TextAlign.center,
                text: text,
                color1: AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_12)
          ],
        ),
      ),
    );
  }
}
