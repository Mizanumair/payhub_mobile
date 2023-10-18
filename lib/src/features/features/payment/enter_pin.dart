import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/payment/processing_transaction.dart';

class EnterPin extends StatelessWidget {
  const EnterPin({super.key});

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
                  height: height_80,
                ),
                CustomText(
                  text: strEnterPin,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_25,
                  textAlign: TextAlign.center,
                ),
                CustomDivider(
                  height: height_30,
                ),
                OtpPinField(
                  onSubmit: (text) {
                    Get.to(ProcessingTransaction());
                  },
                  onChange: (text) {},
                  otpPinFieldInputType: OtpPinFieldInputType.custom,
                  otpPinInputCustom: '●',
                  otpPinFieldStyle: OtpPinFieldStyle(
                    activeFieldBorderColor: AppColors.blue,
                    defaultFieldBorderColor: AppColors.blue,
                    textStyle: TextStyle(
                        color: AppColors.blue, fontSize: 30,fontWeight: fontWeightBold
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
