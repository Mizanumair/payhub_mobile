import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payhub/src/core/constants/palette.dart';

class PaymentController extends GetxController{

  RxBool isSelected = false.obs;

  void colorChange(){
    const isSelect = false;
    isSelected.value=!isSelect;
  }
  void colorChange2(){
    const isSelect = true;
    isSelected.value=!isSelect;
  }

}