import 'package:get/get.dart';

class field_controlle extends GetxController {
  validing(String value, int max, int man) {
    if (value == "") {
      return "Emity";
    } else if (value.length < man) {
      return "min ";
    } else if (value.length > max) {
      return "max ";
    }
    return null;
  }
}
