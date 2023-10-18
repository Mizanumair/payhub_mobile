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
import 'package:payhub/src/features/features/payment/enter_pin.dart';

class InsertCard extends StatelessWidget {
  const InsertCard({super.key});


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EnterPin()),
      );
    });
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
                Image.asset(
                  ImgAssets.insertCard,
                  height: height_270,),
                CustomDivider(
                  height: height_30,
                ),
                CustomText(
                  text: strInsertCard,
                  color1: AppColors.darkBlue,
                  fontWeight: fontWeight700,
                  fontSize: font_25,
                  textAlign: TextAlign.center,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
