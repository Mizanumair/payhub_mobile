import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';

class CustomVendorList extends StatelessWidget {
  const CustomVendorList({
    Key? key,
    required this.image,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final String image;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(radius_5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          AppColors.greyColor.withOpacity(.6), // Border color
                      width: 1, // Border width
                    )),
                child: CircleAvatar(
                  radius: radius_20,
                  backgroundColor: AppColors.transparent,
                  foregroundImage: AssetImage(image),
                ),
              ),
              CustomDivider(
                width: width_15,
              ),
              CustomText(
                  text: text,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_18)
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: AppColors.greyColor.withOpacity(.5),
          indent: margin_70,
          height: height_25,
        ),
      ],
    );
  }
}
