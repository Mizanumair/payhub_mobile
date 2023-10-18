import 'package:flutter/material.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';

class CustomPayMethod extends StatelessWidget {
  const CustomPayMethod({
    Key? key,
    required this.image,
    required this.text,
    required this.color,
    required this.onTap,
    required this.colorImage,
  }) : super(key: key);

  final String image;
  final String text;
  final Color color;
  final Color colorImage;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: radius_25, vertical: margin_15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radius_12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              color: colorImage,
              height: height_80,
            ),
            CustomDivider(
              height: height_10,
            ),
            CustomText(
              text: text,
              color1: colorImage,
              fontWeight: fontWeight600,
              fontSize: font_15,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
