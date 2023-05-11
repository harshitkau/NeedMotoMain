import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/Request_model.dart';
import '../screens/RequestAccepted.dart';
import '../screens/Request_Pending.dart';
import '../screens/Request_Rejected.dart';

class RequestController extends GetxController {
  RxList productData = [].obs;
  var status = ''.obs;
  @override
  void onInit() {
    super.onInit();
    // fatchData();
  }

  // void fatchData() {
  //   productData.assign(data(

  //       from: 'Kott bayam',
  //       to: 'Chittoor',
  //       pickupDate: '22-04-23',
  //       dropDate: '23-04-23',
  //       delivery: 'Pickup',
  //       purpose: 'Home'));
  //   debugPrint(productData[0].toString());
  // }

  void change() {
    Widget getWidget(var status) {
      if (status == 'accepted') {
        return RequestAccepted();
      } else if (status == 'rejected') {
        return RequestRejected();
      } else {
        return RequestPending();
      }
    }
  }

  Widget getWidget(String status) {
    if (status == 'accepted') {
      return RequestAccepted();
    } else if (status == 'rejected') {
      return RequestRejected();
    } else {
      return RequestPending();
    }
  }
}
