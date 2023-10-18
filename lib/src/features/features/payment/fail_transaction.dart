import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
class FailedTransaction extends StatelessWidget {
  const FailedTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomDivider(
                  height: height_90,
                ),
                Image.asset(
                  ImgAssets.fail,
                  height: height_200,
                ),
                CustomDivider(
                  height: height_30,
                ),
                CustomText(
                  text: '${str$}120.33',
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_22,
                  textAlign: TextAlign.center,
                ),
                CustomDivider(
                  height: height_10,
                ),
                CustomText(
                  text: strPayFail,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_16,
                  textAlign: TextAlign.center,
                ),
                CustomDivider(
                  height: height_30,
                ),
                CustomText(
                  text: strFailSorry,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_12,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            CustomDivider(
              height: height_120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                   width: width_100,
                    text: strRetry,
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_14,
                    onPress: () {}),
                CustomButton(
                    width: width_100,
                    text: strClose,
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_14,
                    onPress: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
