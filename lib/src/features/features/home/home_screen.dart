import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_home_container.dart';
import 'package:payhub/src/components/custom_text.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/vendor/vendor_screen.dart';

import '../../../core/constants/palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                SizedBox(
                    width: width_370,
                    child: Image(
                      image: AssetImage(ImgAssets.polygon),
                      fit: BoxFit.fill,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: margin_10, top: margin_60),
                  child: CustomText(
                      text: strHomeTitle,
                      color1: AppColors.white,
                      fontWeight: fontWeight600,
                      fontSize: font_18),
                )
              ],
            ),
            CustomDivider(
              height: height_35,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: margin_10),
                child: GridView(
                  shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                    mainAxisSpacing: height_10,
                      crossAxisSpacing: width_10
                    ),
                children: [
                  // for(int i=1; i<20; i++)
                  CustomHomeContainer(
                    image: ImgAssets.utilityIcon,
                    text: strUtility,
                    onTap: (){
                      Get.to(VendorScreen());
                      print('Utility');
                    },
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.gasIcon,
                    text: strGas,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.waterIcon,
                    text: strWater,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                CustomHomeContainer(
                    image: ImgAssets.telecomIcon,
                    text: strTelecommunications,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.strataIcon,
                    text: strStrata,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.insuranceIcon,
                    text: strInsurance,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.pensionIcon,
                    text: strPension,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.energyIcon,
                    text: strEnergy,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                  CustomHomeContainer(
                    image: ImgAssets.bankIcon,
                    text: strBank,
                    onTap: (){
                      Get.to(VendorScreen());
                    },
                  ),
                ],
                )),
            CustomDivider(
              height: height_40,
            ),
            SizedBox(
                width: width_370,
                child: Image(
                  image: AssetImage(ImgAssets.polygonDown),
                  fit: BoxFit.fill,
                )),
          ],
        ),
      ),
    );
  }
}



