import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  RxInt selectedItem = 1.obs;

  void selectItem(int value) {
    selectedItem.value = value;
  }
}