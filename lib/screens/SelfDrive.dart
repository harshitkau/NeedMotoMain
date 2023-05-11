import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:need_moto/main.dart';

import '../controllers/Dropdown.dart';
import '../model/Log_model.dart';
import 'sixth.dart';
import 'Home.dart';
import 'ReqCancle.dart';
import 'ReqSent.dart';

class SelfDrive extends StatelessWidget {
  TextEditingController _vehicleNeedLocations = TextEditingController();
  TextEditingController _vehicleSource = TextEditingController();
  TextEditingController _vehicleDestination = TextEditingController();
  TextEditingController _pickupDateTime = TextEditingController();
  TextEditingController _returnDateTime = TextEditingController();
  TextEditingController _delivery = TextEditingController();
  TextEditingController _purpose = TextEditingController();
  DropdownController controller = DropdownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(),
            Container(
              width: 50,
              height: 50,
              child: Image.asset('assets/images/car1.jpg'),
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person))
          ],
        ),
      ),
      drawer: Drawer(
        child: Text('drawer'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.all(0)),
                  Column(
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.blue, width: 2.0),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Request()));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(5),
                              child: Image.asset('assets/images/wheel.png'),
                            ),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Self Drive')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.blue, width: 2.0),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReqSent()));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(15),
                              child: Image.asset('assets/images/arrow.png'),
                            ),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Tax vehicle')
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.blue, width: 2.0),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReqCancle()));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              child: Image.asset('assets/images/opp.png'),
                            ),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Round trip \n with driver')
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.blue, width: 2.0),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              child: Image.asset('assets/images/truck.png'),
                            ),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Commercial')
                    ],
                  ),
                  SizedBox(
                    width: 6,
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: DropdownSearch(
                  popupProps: PopupProps.menu(
                    constraints: BoxConstraints(maxHeight: 200),
                  ),
                  items: controller.options,
                  dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: 'Seats',
                  )),
                  onChanged: (value) {
                    controller.setValue(value!);
                  },
                  selectedItem: controller.selectedItem,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextField(
                  controller: _vehicleNeedLocations,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Vehicle need from Location'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextField(
                  controller: _vehicleSource,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Source'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextField(
                  controller: _vehicleDestination,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Destination'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextField(
                  controller: _pickupDateTime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Pickup date & Time'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextField(
                  controller: _returnDateTime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Return date and Time'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextField(
                  controller: _delivery,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: Icon(
                        Icons.info_outline,
                        color: Colors.blue,
                      ),
                      labelText: 'Vehicle home delivery or self pickup'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 60,
                child: TextField(
                  controller: _purpose,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Purpose'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => sixth(
                                  seats: controller.selectedItem,
                                  delivery: _delivery.text,
                                  vehicleLocation: _vehicleNeedLocations.text,
                                  source: _vehicleSource.text,
                                  destination: _vehicleDestination.text,
                                  pickupDateTime: _pickupDateTime.text,
                                  returnDateTime: _returnDateTime.text,
                                  purpose: _purpose.text,
                                )));
                  },
                  child: Container(
                    width: 250,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.orangeAccent],
                            stops: [0.1, 0.7]),
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      'Find Vehicle',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
