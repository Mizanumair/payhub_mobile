import 'package:get/get.dart';
import 'package:payhub/src/features/auth/splash/splash_controller.dart';

class SplashBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<SplashController>(SplashController());
  }
}