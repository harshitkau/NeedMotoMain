import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/Car_controller.dart';

class CarScreen extends StatelessWidget {
  final carController = Get.put(CarController());
  final dropdown = Get.put(Dropdown());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('select your car'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(child: GetBuilder<CarController>(
            builder: (controller) {
              return ListView.builder(
                  itemCount: carController.productData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Theme.of(context).primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 5,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 120,
                              width: double.infinity,
                              child: Image.asset(
                                carController.productData[index].productImage,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    carController
                                        .productData[index].productName,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                      width: 60,
                                      height: 35,
                                      padding: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green[700],
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                '${carController.productData[index].rate}',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(width: 5),
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 14.0,
                                            )
                                          ])),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                  ),
                                  Text(
                                    '₹ ${carController.productData[index].price}/km',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black),
                                  child: Text(
                                    'Book now',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  });
            },
          ))
        ],
      ),
    );
  }
}

class Dropdown {}
