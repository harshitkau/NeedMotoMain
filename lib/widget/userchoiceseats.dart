import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:need_moto/widget/form.dart';
import 'package:need_moto/widget/fromtotile.dart';
import 'package:need_moto/widget/timeslider.dart';

import '../controllers/VehicleBookingController.dart';

// void showPopupMenu(BuildContext context) async {
//   final result = FormTile();
// }

class UserChoiceSeats extends StatefulWidget {
  UserChoiceSeats({
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
  State<UserChoiceSeats> createState() => _UserChoiceSeatsState();
}

class _UserChoiceSeatsState extends State<UserChoiceSeats> {
  final userChoiceController = Get.put(UserChoiceController());

  bool isSelected = false;
  bool isAnimated = false;
  bool isAnimatedback = true;
  bool isEditable = false;
  // // Define a callback function to pass to each UserChoiceButton
  // void handleButtonTap(int seats) {
  //   final vehicleBookingController = Get.find<VehicleBookingController>();
  //   print(seats);
  //   vehicleBookingController.filterCars(seats);
  // }

  // Define a callback function to pass to each UserChoiceButton
  void handleButtonTap(String label) {
    final vehicleBookingController = Get.find<VehicleBookingController>();
    print(label);
    vehicleBookingController.filterCars(label);
    userChoiceController.selectedButton.value = label;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Obx(() => Row(
                  children: [
                    // SizedBox(width: 16), // Add some padding to the left
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            // height: 20.0,

                            child: UserChoiceButton(
                              icon: Icons.event_seat_sharp,
                              label: '4',
                              isSelected:
                                  userChoiceController.selectedButton.value ==
                                      '4',
                              onTap: handleButtonTap,
                            ),
                          ),
                          UserChoiceButton(
                            icon: Icons.event_seat_sharp,
                            label: '5',
                            isSelected:
                                userChoiceController.selectedButton.value ==
                                    '5',
                            onTap: handleButtonTap,
                          ),
                          UserChoiceButton(
                            icon: Icons.event_seat_sharp,
                            label: '6+',
                            isSelected:
                                userChoiceController.selectedButton.value ==
                                    '6+',
                            onTap: handleButtonTap,
                          ),
                          UserChoiceButton(
                            icon: Icons.directions_car,
                            label: 'Jeeps',
                            isSelected:
                                userChoiceController.selectedButton.value ==
                                    'Jeeps',
                            onTap: handleButtonTap,
                          ),
                        ],
                      ),
                    ),

                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (isEditable == false)
                                isEditable = true;
                              else
                                isEditable = true;
                            });
                          },
                          child: Container(
                            child: Icon(
                              Icons.edit,
                              size: 20,
                            ),
                            color: Colors.green[100],
                            width: 50.0,
                            height: 23.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (isAnimated == false)
                                isAnimated = true;
                              else
                                isAnimated = false;
                            });
                          },
                          child: Container(
                            child: isAnimated
                                ? Icon(Icons.arrow_drop_up)
                                : Icon(Icons.arrow_drop_down),
                            color: Colors.green[100],
                            width: 50.0,
                            height: 20.0,
                          ),
                        ),
                      ],
                    ),
                    //SizedBox(width: 16), // Add some padding to the right
                  ],
                )),
          ),
          SizedBox(height: 10),
          Divider(
            height: 1,
            color: Colors.black54,
          ),
          isAnimated
              ? FormTile(
                  isEditable: isEditable,
                  source: widget.source,
                  delivery: widget.delivery,
                  destination: widget.destination,
                  pickupDateTime: widget.pickupDateTime,
                  returnDateTime: widget.returnDateTime,
                  purpose: widget.purpose,
                )
              : Container(),
        ],
      ),
    );
  }
}

class UserChoiceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final Function(String) onTap;

  VehicleBookingController vehicleBookingController = Get.find();

  UserChoiceButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: GestureDetector(
        onTap: () {
          if (label == 'Jeeps') {
            // Pass a negative value for Jeeps
            onTap("-1");
          } else if (label == "6+") {
            onTap("6");
          } else {
            onTap(label); // Parse the label string to an int
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6),
          height: 15,
          width: 80,
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      icon,
                      color: isSelected ? Colors.white : Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserChoiceController extends GetxController {
  final selectedButton = '4'.obs;
}

class UserFormController extends GetxController {
  final containerVisible = false.obs;

  void toggleContainer() {
    containerVisible.value = !containerVisible.value;
  }
}
