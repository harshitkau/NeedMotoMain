import 'package:get/get.dart';


class DropdownController extends GetxController {
  var selectedItem = ''.obs;
  List<String> options = ['Select seat','2','4','6'];

  void setValue(String value){
    selectedItem.value = value;
  }

}