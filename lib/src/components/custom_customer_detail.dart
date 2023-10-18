import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({
    Key? key,
    required this.name,
    required this.number,
    required this.emailId,
    required this.govIdNo,
  }) : super(key: key);

  final String name;
  final String number;
  final String emailId;
  final String govIdNo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: margin_15, vertical: margin_15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius_10),
          border: Border.all(color: AppColors.greyColor.withOpacity(.6))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: strCustomerDetail,
            color1: AppColors.greyColor,
            fontWeight: fontWeight500,
            fontSize: font_12,
            textAlign: TextAlign.center,
          ),
          CustomDivider(
            height: height_15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: strName,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight500,
                      fontSize: font_12,
                      textAlign: TextAlign.center,
                    ),
                    CustomDivider(
                      height: height_4,
                    ),
                    CustomText(
                      text: name,
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight500,
                      fontSize: font_13,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: strNumber,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight500,
                      fontSize: font_12,
                      textAlign: TextAlign.start,
                    ),
                    CustomDivider(
                      height: height_4,
                    ),
                    CustomText(
                      text: number,
                      color1: AppColors.darkBlue,
                      fontWeight: fontWeight500,
                      fontSize: font_13,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomDivider(
            height: height_15,
          ),
          CustomText(
            text: strEmailId,
            color1: AppColors.greyColor,
            fontWeight: fontWeight500,
            fontSize: font_12,
            textAlign: TextAlign.center,
          ),
          CustomDivider(
            height: height_4,
          ),
          CustomText(
            text: emailId,
            color1: AppColors.darkBlue,
            fontWeight: fontWeight500,
            fontSize: font_13,
            textAlign: TextAlign.center,
          ),
          CustomDivider(
            height: height_15,
          ),
          CustomText(
            text: strGovIdNumber,
            color1: AppColors.greyColor,
            fontWeight: fontWeight500,
            fontSize: font_12,
            textAlign: TextAlign.center,
          ),
          CustomDivider(
            height: height_4,
          ),
          CustomText(
            text: govIdNo,
            color1: AppColors.darkBlue,
            fontWeight: fontWeight500,
            fontSize: font_13,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
