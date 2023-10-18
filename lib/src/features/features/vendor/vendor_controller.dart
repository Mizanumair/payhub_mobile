import 'package:get/get.dart';

class VendorController extends GetxController{
  var selectedItem = 'Item 1'.obs;
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  void onDropdownChanged(String newValue) {
    selectedItem.value = newValue;
  }
}