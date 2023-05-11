import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KycController extends GetxController{

  // var to control visibility of container
  var isContainerVisible = false.obs;

  //method to control popup of the container
  void toggleContainerVisibility(){
    isContainerVisible.toggle();
  }
}