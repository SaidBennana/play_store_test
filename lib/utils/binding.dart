import 'package:get/get.dart';
import 'package:play_store_test/controlle/Auth/feildForm.dart';

class myBanding implements Bindings {
  @override
  void dependencies() {
    Get.put(field_controlle());
  }
}
