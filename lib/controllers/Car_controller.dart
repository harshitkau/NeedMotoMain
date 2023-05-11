import 'package:get/get.dart';

import '../model/Car_model.dart';

class CarController extends GetxController {
  List<Product> productData = [];

  @override
  void onInit() {
    super.onInit();
    fatchproductData();
  }

  fatchproductData() async {
    await Future.delayed(Duration(seconds: 3));

    List<Product> serverResponse = [
      Product(
          id: 1,
          productName: 'RR',
          productImage: 'assets/car1.jpg',
          productDescription: 'good car',
          price: 500,
          rate: 5.0),
      Product(
          id: 2,
          productName: 'BMW',
          productImage: 'assets/bike.jpg',
          productDescription: 'good bike',
          price: 250,
          rate: 2.5),
      Product(
          id: 3,
          productName: 'nano',
          productImage: 'assets/truck.jpg',
          productDescription: 'good car',
          price: 10,
          rate: 1.0),
      Product(
          id: 1,
          productName: 'RR',
          productImage: 'assets/car1.jpg',
          productDescription: 'good car',
          price: 500,
          rate: 5.0),
    ];

    productData.assignAll(serverResponse);
    print(productData);
    update();
  }
}
