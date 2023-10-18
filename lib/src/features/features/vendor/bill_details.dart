import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_button.dart';
import 'package:payhub/src/components/custom_divider.dart';
import 'package:payhub/src/components/custom_textfield.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/font_weight.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/vendor/bill_summary.dart';
import 'package:payhub/src/features/features/vendor/vendor_controller.dart';
import 'package:payhub/src/features/features/vendor/vendor_screen.dart';

class BillDetailsScreen extends StatelessWidget {
   BillDetailsScreen({super.key});

  final VendorController _controller = Get.put(VendorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strCustomer,
        containerColor: AppColors.transparent,
        text: '',
        color: AppColors.darkBlue,
        dontShowBackButton: false,
      ),
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
        children: [
          CustomDivider(
            height: height_20,
          ),
          CustomTextField(
              labelText: strName,
              hintText: strEnterName,
              prefixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.text),
          CustomTextField(
              labelText: strEmailId,
              hintText: strEnterEmail,
              prefixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.text),
          CustomTextField(
              labelText: strMobile,
              hintText: strEnterMobile,
              prefixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.number),
          Obx(() {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius_8),
                border:  Border.all(color: AppColors.greyColor.withOpacity(.5)),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                underline: SizedBox(),
                elevation: 0,
                value: _controller.selectedItem.value,
                onChanged: (val){
                  val!=val;
                },
                items: _controller.items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: TextStyle(
                        color: AppColors.greyColor,
                        fontSize: font_12,
                        fontFamily: 'Metropolis',
                        fontWeight: fontWeight500),),
                  );
                }).toList(),
              ),
            );
          }),
          CustomDivider(
            height: height_20,
          ),
          CustomTextField(
              labelText: strGovId,
              hintText: strSelectGovIdNumber,
              prefixIcon: null,
              obscure: false,
              height: height_20,
              textInputType: TextInputType.text),
          CustomDivider(
            height: height_170,
          ),
          CustomButton(
              text: strProceed,
              color: AppColors.white,
              fontWeight: fontWeight700,
              font: font_16,
              height: height_50,
              onPress: () {
                Get.to(BillSummary());

              })
        ],
      )),
    );
  }
}
