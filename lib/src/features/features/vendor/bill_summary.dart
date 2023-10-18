import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_customer_detail.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/payment/payment_method_screen.dart';
import 'package:payhub/src/features/features/vendor/vendor_screen.dart';

class BillSummary extends StatelessWidget {
  const BillSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strBillSummary,
        containerColor: AppColors.transparent,
        text: '',
        color: AppColors.darkBlue,
        dontShowBackButton: false,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomDivider(
                  height: height_20,
                ),
                Container(
                  padding: EdgeInsets.all(radius_5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:
                            AppColors.greyColor.withOpacity(.4), // Border color
                        width: 1, // Border width
                      )),
                  child: CircleAvatar(
                    radius: radius_30,
                    backgroundColor: AppColors.transparent,
                    foregroundImage: const AssetImage(ImgAssets.gasIcon),
                  ),
                ),
                CustomDivider(
                  height: height_15,
                ),
                CustomText(
                  text: strTelecommunications,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_15,
                  textAlign: TextAlign.center,
                ),
                CustomDivider(
                  height: height_15,
                ),
                CustomText(
                  text: strYourBill,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_14,
                  textAlign: TextAlign.center,
                ),
                CustomDivider(
                  height: height_15,
                ),
                CustomText(
                  text: '${str$}120.56',
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight800,
                  fontSize: font_24,
                  textAlign: TextAlign.center,
                ),

              ],
            ),
            CustomDivider(
              height: height_40,
            ),
            const CustomerDetails(
                name: 'Mizan Umair',
                number: '123346565665565',
                emailId: 'yvtvcftq@gmail.com',
                govIdNo: '87863756'),
            CustomDivider(
              height: height_150,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margin_30),
              child: CustomButton(
                  text: strProceed,
                  color: AppColors.white,
                  fontWeight: fontWeight700,
                  font: font_16,
                  height: height_50,
                  onPress: () {
                    Get.to(PaymentMethod());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
