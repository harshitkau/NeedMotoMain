import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_moto/controllers/VehicleBookingController.dart';
import 'package:need_moto/controllers/main_controller.dart';
import 'package:need_moto/main.dart';
import 'package:need_moto/model/Car_model.dart';

import '../widget/distanceslider.dart';
import '../widget/fromtotile.dart';
import '../widget/myappbar.dart';
import '../widget/timeslider.dart';
import '../widget/pickupdeliverypurpose.dart';
import '../widget/userchoiceseats.dart';
import '../widget/vehicleTile.dart';

class sixth extends StatefulWidget {
  sixth({
    Key? key,
    required this.seats,
    required this.vehicleLocation,
    required this.source,
    required this.destination,
    required this.pickupDateTime,
    required this.returnDateTime,
    required this.delivery,
    required this.purpose,
  }) : super(key: key);
  RxString seats;
  String vehicleLocation;
  String source;
  String destination;
  String pickupDateTime;
  String returnDateTime;
  String delivery;
  String purpose;

  @override
  State<sixth> createState() => _sixthState();
}

class _sixthState extends State<sixth> {
  MainController mainController = Get.find();
  VehicleBookingController vehicleBookingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              TimeSlider(),
              SizedBox(
                height: 10.0,
              ),
              DistanceSlider(),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1,
              ),
              UserChoiceSeats(
                seats: widget.seats,
                delivery: widget.delivery,
                vehicleLocation: widget.vehicleLocation,
                source: widget.source,
                destination: widget.destination,
                pickupDateTime: widget.pickupDateTime,
                returnDateTime: widget.returnDateTime,
                purpose: widget.purpose,
              ),
              Divider(
                thickness: 1,
              ),
              Obx(
                () => SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: vehicleBookingController.filteredCars.length,
                    itemBuilder: (BuildContext context, int index) {
                      var car = vehicleBookingController.filteredCars[index];

                      mainController.imgUrlController.text =
                          'https://cdni.autocarindia.com/utils/imageresizer.ashx?n=https://cms.haymarketindia.net/model/uploads/modelimages/Hyundai-Grand-i10-Nios-200120231541.jpg&w=872&h=578&q=75&c=1';
                      mainController.vehicleNameController.text =
                          "${car["brandName"]} ${car["model"]}";
                      mainController.seatsController.text = car["seating"];
                      mainController.rentalPricePerKmController.text =
                          car["pricePerDay"];
                      mainController.perKmController.text =
                          car["distanceRange"];
                      mainController.distanceFromYouController.text = "2.5";
                      mainController.averageController.text = car["average"];
                      mainController.kpmlController.text = car["kpml"];
                      mainController.typeController.text = car["type"];
                      mainController.ownerNameController.text =
                          car["ownerName"];
                      mainController.ownerPhoneNumberController.text =
                          "9999223222";

                      return VehicleTile(
//key: ValueKey(index),
                        imgUrl: mainController.imgUrlController.text,
                        vehicleName: mainController.vehicleNameController.text,
                        seats: mainController.seatsController.text,
                        rentalPricePerKm:
                            mainController.rentalPricePerKmController.text,
                        perKm: mainController.perKmController.text,
                        distanceFromYou:
                            mainController.distanceFromYouController.text,
                        kpml: mainController.kpmlController.text,
                        type: mainController.typeController.text,
                        ownerName: mainController.ownerNameController.text,
                        ownerPhoneNumber:
                            mainController.ownerPhoneNumberController.text,
                        average: mainController.averageController.text,
                        ////
                        delivery: widget.delivery,
                        source: widget.source,
                        destination: widget.destination,
                        pickupDateTime: widget.pickupDateTime,
                        returnDateTime: widget.returnDateTime,
                        purpose: widget.purpose,
                        vehicleLocation: widget.vehicleLocation,
                        userseats: widget.seats,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
