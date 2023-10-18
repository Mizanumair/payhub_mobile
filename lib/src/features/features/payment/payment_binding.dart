import 'package:get/get.dart';
import 'package:payhub/src/features/features/payment/payment_controller.dart';

class PaymentBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<PaymentController>(PaymentController());
  }
}