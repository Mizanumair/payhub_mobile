import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_payment_method.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/payment/insert_card.dart';
import 'package:payhub/src/features/features/payment/payment_controller.dart';

class PaymentMethod extends GetView<PaymentController> {
  PaymentMethod({super.key});

  final PaymentController controller = Get.put(PaymentController());
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strPaymentMeth,
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
              height: height_20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => CustomPayMethod(
                      image: ImgAssets.kioskCard,
                      text: strPaymentViaCard,
                      color: controller.isSelected.value
                          ? AppColors.greyColor.withOpacity(.2)
                          : AppColors.blue,
                      onTap: () {
                        print('Card');
                        controller.colorChange2();
                      },
                      colorImage: controller.isSelected.value
                          ? AppColors.greyColor
                          : AppColors.white,
                    )),
                Obx(() => CustomPayMethod(
                      image: ImgAssets.kioskCash,
                      text: strPaymentViaCash,
                      color: controller.isSelected.value
                          ? AppColors.blue
                          : AppColors.greyColor.withOpacity(.2),
                      onTap: () {
                        print('Cash');
                        controller.colorChange();
                      },
                      colorImage: controller.isSelected.value
                          ? AppColors.white
                          : AppColors.greyColor,
                    )),
              ],
            ),
            CustomDivider(
              height: height_300,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: margin_20),
              child: CustomButton(
                  text: strProceed,
                  color: AppColors.white,
                  fontWeight: fontWeight700,
                  font: font_16,
                  height: height_50,
                  onPress: () {
                    Get.to(InsertCard());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
