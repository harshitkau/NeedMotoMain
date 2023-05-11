import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/Request_Controller.dart';

class RequestStatus extends StatelessWidget {
  RequestStatus({Key? key}) : super(key: key);
  String status = 'rejected';
  final controller = Get.put(RequestController());
  @override
  Widget build(BuildContext context) {
    return controller.getWidget(status);
  }
}
