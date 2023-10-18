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
import 'package:payhub/src/features/features/payment/fail_transaction.dart';

class ApprovedPayment extends StatelessWidget {
  const ApprovedPayment({super.key});

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
                  ImgAssets.check,
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
                  text: strApprovePay,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_16,
                  textAlign: TextAlign.center,
                ),
                CustomDivider(
                  height: height_30,
                ),
                CustomText(
                  text: strThanksPay,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_13,
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
                    width: width_170,
                    text: strPayAnotherBill,
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

                IconButton(onPressed: (){
                  Get.to(FailedTransaction());
                }, icon: Icon(Icons.import_contacts_sharp))
              ],
            )
          ],
        ),
      ),
    );
  }
}
