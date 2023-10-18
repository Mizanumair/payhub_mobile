import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/auth/login/login_screen.dart';

class SplashSecond extends StatelessWidget {
  const SplashSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImgAssets.splashTwo,),
                CustomText(
                  text: strSplashTwoText,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight600,
                  fontSize: font_16,
                  textAlign: TextAlign.center,
                ),
                CustomDivider(
                  height: height_20,
                ),
                CustomText(
                  text: strSplashTwoTextLite,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_12,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            CustomDivider(
              height: height_80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margin_30),
              child: CustomButton(
                  width: width_100,
                  text: strSignin,
                  color: AppColors.white,
                  fontWeight: fontWeight600,
                  font: font_14,
                  onPress: () {
                    Get.to(LoginScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
