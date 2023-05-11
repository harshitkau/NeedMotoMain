// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../controllers/tiledocumentcontroller.dart';
// import 'package:file_picker/file_picker.dart';
//
//
// class KycDocumentTile extends StatelessWidget {
//
//   final TileDocumentController tileDocController = Get.put(TileDocumentController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => ListTile(
//       leading: GestureDetector(
//         onTap: () async{
//           FilePickerResult? result = await FilePicker.platform.pickFiles();
//
//           if (result != null) {
//             File file = File(result.files.single.path!);
//             // Do something with the file here
//           } else {
//             // User canceled the picker
//           }
//         },
//         child: Icon(
//           // Icons.picture_as_pdf,
//           size: 40.0,
//         ),
//       ),
//
//       title:Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//
//           // TextField(
//           //   onChanged: tileDocController.updateTextField1,
//           //   decoration: InputDecoration(labelText: "Text Field 1"),
//           // ),
//           // TextField(
//           //   onChanged: tileDocController.updateTextField2,
//           //   decoration: InputDecoration(labelText: "Text Field 2"),
//           // ),
//           Row(
//             children: [
//               Text('file.pdf'),
//
//               SizedBox(width: 150.0,),
//
//               Text('2.5 MB'),
//             ],
//           ),
//           SizedBox(height: 8.0,),
//
//           LinearProgressIndicator(value: tileDocController.progressBar.value),
//         ],
//       ),
//
//     ),
//     );
//   }
// }
