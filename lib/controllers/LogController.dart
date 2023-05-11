import 'package:get/get.dart';

import '../model/Log_model.dart';

class LogController extends GetxController {
  RxList productData = [].obs;
  RxString request = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fatchrequest();
  }

  fatchrequest() {
    List<Request> serverResponse = [
      Request(
          request: 'Request Accepted',
          reqImage: 'assets/images/green.png',
          seats: 5,
          pickup: '23-03-23',
          drop: '27-02-23',
          delivery: 'H.D'),
      Request(
          request: 'Request Accepted',
          reqImage: 'assets/images/green.png',
          seats: 4,
          pickup: '11-05-24',
          drop: '14-05-24',
          delivery: 'S.P'),
      Request(
          request: 'Request Rejected',
          reqImage: 'assets/images/red.png',
          seats: 5,
          pickup: '23-03-23',
          drop: '27-02-23',
          delivery: 'H.D'),
      Request(
          request: 'Request Accepted',
          reqImage: 'assets/images/green.png',
          seats: 4,
          pickup: '11-05-24',
          drop: '14-05-24',
          delivery: 'S.P'),
      Request(
          request: 'Request Accepted',
          reqImage: 'assets/images/green.png',
          seats: 4,
          pickup: '11-05-24',
          drop: '14-05-24',
          delivery: 'S.P'),
      Request(
          request: 'Request Pending',
          reqImage: 'assets/images/red.png',
          seats: 5,
          pickup: '23-03-23',
          drop: '27-02-23',
          delivery: 'H.D'),
    ];
    productData.assignAll(serverResponse);
    print(productData);
    update();
  }
}
