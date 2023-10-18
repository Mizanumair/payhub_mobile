import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_polygon.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/components/custom_textfield.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/auth/login/login_controller.dart';
import 'package:payhub/src/features/features/home/home_screen.dart';

import '../../../core/constants/font_weight.dart';

class LoginScreen extends GetView<LoginController> {
   LoginScreen({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: '',
        containerColor: AppColors.transparent,
        text: '',
        color: AppColors.darkBlue,
        dontShowBackButton: false,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_15),
          children: [
            CustomDivider(
              height: height_40,
            ),
            CustomText(
                text: strLetLog,
                color1: AppColors.darkBlue,
                fontWeight: fontWeight700,
                fontSize: font_25,
                height: height_10,
            ),
            CustomText(
                text: strLetLogViaAdmin,
                color1: AppColors.darkBlue,
                fontWeight: fontWeight500,
                fontSize: font_14,
                height: height_50,
            ),
            CustomTextField(
              first: true,
              labelText: strEmail,
              suffixIcon: null,
              obscure: false,
              height: height_10,
              textInputType: TextInputType.emailAddress,
              prefixIcon: Container(
                  width: width_5,
                  child: Image(image: AssetImage(ImgAssets.emailIcon))),
            ),
            Obx(() => CustomTextField(
              first: true,
              labelText: strPassword,
              suffixIcon: IconButton(
                  onPressed: () {
                    controller.togglePasswordVisibility();
                  },
                  icon: Icon(
                    controller.isPasswordVisible.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),),
              lines: 1,
              obscure: !controller.isPasswordVisible.value,
              height: height_10,
              textInputType: TextInputType.text,
              prefixIcon: Image(image: AssetImage(ImgAssets.passIcon)),
            ),),
            CustomDivider(
              height: height_110,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: margin_20),
              child: CustomButton(
                  text: strLogin,
                  color: AppColors.white,
                  fontWeight: fontWeight600,
                  font: font_15,
                  onPress: () {
                    Get.to(HomeScreen());
                  }),
            ),

            
          ],
        ),
      ),
    );
  }
}
