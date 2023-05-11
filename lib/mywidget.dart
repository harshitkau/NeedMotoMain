// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:need_moto/objects/form.dart';
//
// import 'controllers/menucontroller.dart';
//
//
// class MyWidget extends StatelessWidget {
//   final MenuController _menuController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showPopupMenu(context);
//       },
//       child: Container(
//         width: 100,
//         height: 50,
//         color: Colors.grey,
//         child: Center(
//           child: Obx(
//                 () => Text('Selected item: ${_menuController.selectedItem.value}'),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void showPopupMenu(BuildContext context) async {
//     final result = await showMenu(
//       context: context,
//       position: RelativeRect.fromLTRB(0, 0, 0, 0),
//       items: [
//         PopupMenuItem(
//           child: FormTile(),
//         ),
//       ],
//     );
//
//     // Update the selected item in the menu controller
//     if (result != null) {
//       _menuController.selectItem(result);
//     }
//   }
// }
