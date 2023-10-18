import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/components/custom_text_button.dart';
import 'package:payhub/src/components/custom_textfield.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/vendor/bill_details.dart';
import 'package:payhub/src/features/features/vendor/vendor_controller.dart';
import 'package:payhub/src/features/features/vendor/vendor_screen.dart';

class BillNumber extends StatelessWidget {
  BillNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strFlow,
        containerColor: AppColors.transparent,
        text: '',
        color: AppColors.darkBlue,
        dontShowBackButton: false,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          CustomDivider(
            height: height_20,
          ),
          CustomTextField(
            labelText: strTelecommunications,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: margin_5),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: margin_3, horizontal: margin_3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: AppColors.greyColor.withOpacity(.6))),
                child: CircleAvatar(
                    radius: 5,
                    backgroundColor: AppColors.transparent,
                    child: Image(
                      image: AssetImage(ImgAssets.gasIcon),
                      height: height_28,
                    )),
              ),
            ),
            suffixIcon: CustomTextButton(
              text: strChange,
              color: AppColors.blue,
              fontWeight: fontWeight600,
              font: font_10,
              onPress: () {},
            ),
            obscure: false,
            readOnly: true,
            height: height_10,
            textInputType: TextInputType.text,
            onTap: () {
              print('Success');
            },
          ),
          CustomTextField(
            labelText: strEnterBillN,
            hintText: strEnterBillN,
            prefixIcon: null,
            suffixIcon: CustomTextButton(
                text: strSample,
                color: AppColors.blue,
                fontWeight: fontWeight600,
                font: font_10,
                onPress: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: CustomText(
                            text: strSample,
                            color1: AppColors.black,
                            fontWeight: fontWeight600,
                            fontSize: font_15),
                        content: Image.asset(ImgAssets.energyIcon),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }),
            obscure: false,
            height: height_10,
            textInputType: TextInputType.text,
            onTap: () {
              print('Success');
            },
          ),
          CustomTextField(
            labelText: strAmount,
            hintText: strAmountToBe,
            prefixIcon: null,
            obscure: false,
            height: height_10,
            textInputType: TextInputType.text,
            onTap: () {
              print('Success');
            },
          ),
          CustomDivider(
            height: height_330,
          ),
          CustomButton(
              text: strProceed,
              color: AppColors.white,
              fontWeight: fontWeight700,
              font: font_16,
              height: height_50,
              onPress: () {
                Get.to(BillDetailsScreen());
              })
        ],
      ),
    );
  }
}
