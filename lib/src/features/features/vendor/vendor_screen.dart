import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payhub/src/components/custom_appbar.dart';
import 'package:payhub/src/components/custom_textfield.dart';
import 'package:payhub/src/components/custom_vendor_list.dart';
import 'package:payhub/src/core/constants/assets.dart';
import 'package:payhub/src/core/constants/dimensions.dart';
import 'package:payhub/src/core/constants/palette.dart';
import 'package:payhub/src/core/constants/strings.dart';
import 'package:payhub/src/features/features/vendor/bill_number.dart';

class VendorScreen extends StatelessWidget {
  const VendorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appBar: AppBar(),
        title: strRecharge,
        containerColor: AppColors.transparent,
        text: '',
        color: AppColors.darkBlue,
        dontShowBackButton: false,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomTextField(
                first: true,
                labelText: strSearch,
                prefixIcon: Icon(Icons.search, size: margin_25),
                obscure: false,
                height: height_10,
                lines: 1,
                textInputType: TextInputType.text),
            for(int i=1; i<20; i++)
            CustomVendorList(
              image: ImgAssets.gasIcon,
              text: strGas,
              onTap: (){
                Get.to(BillNumber());
                print('List');
              },
            )
          ],
        ),
      ),
    );
  }
}
