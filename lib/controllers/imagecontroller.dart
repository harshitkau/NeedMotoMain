import 'dart:io';
import 'package:get/get.dart';


class ImageController extends GetxController {
  var image = Rxn<File>();

  void updateImage(File file) {
    image.value = file;
  }
}