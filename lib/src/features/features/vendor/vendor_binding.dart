import 'package:get/get.dart';
import 'package:payhub/src/features/features/vendor/vendor_controller.dart';

class VendorBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<VendorController>(VendorController());
  }
}