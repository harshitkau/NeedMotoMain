import 'package:get/get.dart';

class TileDocumentController extends GetxController {
  final fileName = ''.obs;
  final fileExtension = ''.obs;
  final progressBar = 0.0.obs;
  final errorMessage = Rxn<String>();

  // TileDocumentController({required String initialFileName}) {
  //   fileName.value = initialFileName;
  // }

  void updateFileName(String value) {
    fileName.value = value;
  }

  void updateFileExtension(String extension) {
    fileExtension.value = extension;
  }

  void updateProgressBarValue(double value) {
    progressBar.value = value;
  }

  void updateErrorMessage(String? message) {
    errorMessage.value = message;
  }

  void clear() {
    fileName.value = '';
    fileExtension.value = '';
    progressBar.value = 0.0;
    errorMessage.value = null;
  }
}
