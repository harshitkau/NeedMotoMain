import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_moto/widget/request.dart';
import 'package:need_moto/screens/tenth.dart';

class VehicleTile extends StatefulWidget {
  final String imgUrl;
  final String vehicleName;
  final String seats;
  final String rentalPricePerKm;
  final String perKm;
  final String distanceFromYou;
  final String kpml;
  final String type;
  final String ownerName;
  final String ownerPhoneNumber;
  final String average;
  // final String userId;

  RxString userseats;
  String vehicleLocation;
  String source;
  String destination;
  String pickupDateTime;
  String returnDateTime;
  String delivery;
  String purpose;

  VehicleTile({
    required this.imgUrl,
    required this.vehicleName,
    required this.seats,
    required this.rentalPricePerKm,
    required this.perKm,
    required this.distanceFromYou,
    required this.kpml,
    required this.type,
    required this.ownerName,
    required this.ownerPhoneNumber,
    required this.average,
    required this.userseats,
    required this.vehicleLocation,
    required this.source,
    required this.destination,
    required this.pickupDateTime,
    required this.returnDateTime,
    required this.delivery,
    required this.purpose,
    // required this.userId
  });

  @override
  State<VehicleTile> createState() => _VehicleTileState();
}

class _VehicleTileState extends State<VehicleTile> {
  bool kycdone = false;
  // getKycStatus() async {
  //   await CheckKyc.checkKycdone(widget.userId).then((iskycdone) {
  //     setState(() {
  //       // isLoading = false;
  //       kycdone = iskycdone;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Vehicle Details
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vehicle Name
                  Text(
                    widget.vehicleName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),

                  SizedBox(height: 8.0),

                  // Seats

                  Row(
                    children: [
                      Text(
                        '${widget.seats}',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Icon(Icons.event_seat_sharp),
                    ],
                  ),

                  SizedBox(height: 8.0),

                  // Rental Price Per Km and Per Km
                  Text(
                    'Rs ${widget.rentalPricePerKm}/- Per day ${widget.perKm} km',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),

                  SizedBox(height: 8.0),

                  // Distance From You
                  Text(
                    '${widget.distanceFromYou} km away from you',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),

                  SizedBox(height: 16.0),

                  // Book Now Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle booking logic here
                      // showCupertinoAlertDialog(context);
                      Get.to(Request(
                          vehicleLocation: widget.vehicleLocation,
                          source: widget.source,
                          destination: widget.destination,
                          delivery: widget.delivery,
                          pickupDateTime: widget.pickupDateTime,
                          returnDateTime: widget.returnDateTime,
                          purpose: widget.purpose,
                          imgUrl: widget.imgUrl,
                          vehicleName: widget.vehicleName,
                          seats: widget.seats,
                          average: widget.average,
                          kpml: widget.kpml,
                          type: widget.type,
                          ownerName: widget.ownerName,
                          ownerPhoneNumber: widget.ownerPhoneNumber));
                    },
                    child: Text('Book Now'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Vehicle Image
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(widget.imgUrl),
            ),
          ),
        ],
      ),
    );
  }

  showCupertinoAlertDialog(BuildContext context) {
    showDialog(
        builder: (context) => CupertinoAlertDialog(
              title: Column(
                children: <Widget>[
                  Text(
                    "Complete your KYC",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              content: Text(
                "Please complete your KYC\n to book vehicle",
                style: TextStyle(fontSize: 16),
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text("Yes"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Tenth(
                                  seats: widget.userseats,
                                  vehicleLocation: widget.vehicleLocation,
                                  source: widget.source,
                                  destination: widget.destination,
                                  pickupDateTime: widget.pickupDateTime,
                                  returnDateTime: widget.returnDateTime,
                                  delivery: widget.delivery,
                                  purpose: widget.purpose,
                                )));
                  },
                ),
                CupertinoDialogAction(
                  child: Text("No"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
        context: context);
  }
}
