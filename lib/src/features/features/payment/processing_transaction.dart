import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/payment/approved_payment.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProcessingTransaction extends StatelessWidget {
  const ProcessingTransaction({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomDivider(
                  height: height_60,
                ),
                CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 12.0,
                  startAngle: 85,
                  reverse: true,
                  percent: 0.6,
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  center: Image.asset(ImgAssets.security, height: height_70),
                  backgroundColor: AppColors.greyColor.withOpacity(.13),
                  progressColor: AppColors.blue,
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
                  text: strProcessingPay,
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_14,
                  textAlign: TextAlign.center,
                ),

                IconButton(onPressed: (){
                  Get.to(ApprovedPayment());
                }, icon: Icon(Icons.import_contacts_sharp))
              ],
            )
          ],
        ),
      ),
    );
  }
}
