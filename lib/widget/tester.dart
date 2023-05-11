// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:path/path.dart' as path;
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'File Upload Example',
//       home: FileUploadScreen(),
//     );
//   }
// }
//
// class FileUploadScreen extends StatelessWidget {
//   final List<FileUploadTileController> tileControllers = List.generate(
//     5,
//         (index) => FileUploadTileController(),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('File Upload Example'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 itemCount: tileControllers.length,
//                 itemBuilder: (context, index) {
//                   return Obx(() => FileUploadTile(
//                     fileName: tileControllers[index].fileName.value,
//                     progressBarValue:
//                     tileControllers[index].progressBarValue.value,
//                     errorMessage: tileControllers[index].errorMessage.value,
//                     onTap: () => _selectFile(context, tileControllers[index]),
//                   ));
//                 },
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () async {
//                 bool allFilesUploaded = true;
//                 for (var tileController in tileControllers) {
//                   if (!tileController.isUploaded.value) {
//                     allFilesUploaded = false;
//                     break;
//                   }
//                 // }
//                 if (allFilesUploaded) {
//                   List<File> files = tileControllers
//                       .map((tileController) => tileController.selectedFile.value)
//                       .toList();
//                   await _uploadFilesToFirebase(files);
//                   // reset tileControllers for next upload
//                   for (var tileController in tileControllers) {
//                     tileController.reset();
//                   }
//                   Get.snackbar('Upload Complete', 'All files uploaded successfully');
//                 } else {
//                   Get.snackbar('Upload Error', 'Please upload all files before submitting');
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<void> _selectFile(
//       BuildContext context, FileUploadTileController tileController) async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['pdf', 'jpg', 'png'],
//     );
//
//     if (result != null) {
//       File file = File(result.files.single.path!);
//       double fileSizeInKB = file.lengthSync() / 1024;
//       if (fileSizeInKB < 300 || fileSizeInKB > 2000) {
//         tileController.errorMessage.value =
//         'File size must be between 300KB and 2MB.';
//       } else {
//         tileController.selectedFile.value = file;
//         tileController.fileName.value = path.basename(file.path);
//         tileController.errorMessage.value = null;
//         // upload file
//         await tileController.uploadFile();
//       }
//     } else {
//       // User canceled the picker
//     }
//   }
//
//   Future<void> _uploadFilesToFirebase(List<File> files) async {
//     FirebaseStorage storage = FirebaseStorage.instance;
//     for (var file in files) {
//       String fileName = path.basename(file.path);
//       Reference ref = storage.ref().child('fileUploads/$fileName');
//       await ref.putFile(file);
//     }
//   }
