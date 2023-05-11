import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_moto/controllers/main_controller.dart';

class FormTile extends StatefulWidget {
  FormTile(
      {Key? key,
      required this.source,
      required this.destination,
      required this.pickupDateTime,
      required this.returnDateTime,
      required this.delivery,
      required this.purpose,
      required this.isEditable})
      : super(key: key);
  String source;
  String destination;
  String pickupDateTime;
  String returnDateTime;
  String delivery;
  String purpose;
  bool isEditable;

  @override
  State<FormTile> createState() => _FormTileState();
}

class _FormTileState extends State<FormTile> {
  MainController mainController = Get.find();

  final RxBool isFromValid = false.obs;
  final RxBool isToValid = false.obs;
  final RxBool isFromTimeValid = false.obs;
  final RxBool isToTimeValid = false.obs;
  final RxBool isPickupValid = false.obs;
  final RxBool isPurposeValid = false.obs;

  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController fromTimeController = TextEditingController();
  TextEditingController toTimeController = TextEditingController();
  TextEditingController pickupController = TextEditingController();
  TextEditingController purposeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(5.0),
      // padding: EdgeInsets.all(16),
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.grey.shade400,
      //     width: 1,
      //   ),
      //   borderRadius: BorderRadius.circular(8),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First row with "From" and "To" fields
          Row(
            children: [
              Expanded(
                child: widget.isEditable
                    ? TextField(
                        autofocus: false,
                        controller: fromController,
                        onChanged: (value) =>
                            isFromValid.value = value.isNotEmpty,
                        decoration: InputDecoration(
                          labelText: 'From',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    : _edit(widget.source, 'Form'),
              ),
              SizedBox(width: 8),
              Icon(Icons.compare_arrows_sharp, color: Colors.orange[600]),
              SizedBox(width: 8),
              Expanded(
                child: widget.isEditable
                    ? TextField(
                        controller: toController,
                        onChanged: (value) =>
                            isToValid.value = value.isNotEmpty,
                        decoration: InputDecoration(
                          labelText: 'To',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    : _edit(widget.destination, 'To'),
              ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            height: 1,
            color: Colors.black54,
          ),

          SizedBox(height: 15),

          // Second row with date and time fields
          Row(
            children: [
              Expanded(
                child: widget.isEditable
                    ? TextField(
                        controller: fromTimeController,
                        onChanged: (value) =>
                            isFromTimeValid.value = value.isNotEmpty,
                        decoration: InputDecoration(
                          labelText: 'Pickup Date and Time',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    : _edit(widget.pickupDateTime, 'Pickup Date and Time'),
              ),
              SizedBox(width: 8),
              Icon(Icons.calendar_today_outlined, color: Colors.orange),
              SizedBox(width: 8),
              Expanded(
                child: widget.isEditable
                    ? TextField(
                        controller: toTimeController,
                        onChanged: (value) =>
                            isToTimeValid.value = value.isNotEmpty,
                        decoration: InputDecoration(
                          labelText: 'Return Date and Time',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    : _edit(widget.returnDateTime, 'Return Date and Time'),
              ),
            ],
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            height: 1,
            color: Colors.black54,
          ),
          SizedBox(height: 10),
          // Third row with "Pickup/Delivery" and "Purpose" fields
          Row(
            children: [
              Expanded(
                child: widget.isEditable
                    ? TextField(
                        controller: pickupController,
                        onChanged: (value) =>
                            isPickupValid.value = value.isNotEmpty,
                        decoration: InputDecoration(
                          labelText: 'Pickup/Delivery',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    : _edit(widget.delivery, 'Pickup/Delivery'),
              ),
              SizedBox(width: 8),
              //Icon(Icons.compare_arrows_sharp, color: Colors.orange),
              SizedBox(width: 8),
              Expanded(
                child: widget.isEditable
                    ? TextField(
                        controller: purposeController,
                        onChanged: (value) =>
                            isPurposeValid.value = value.isNotEmpty,
                        decoration: InputDecoration(
                          labelText: 'Purpose',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      )
                    : _edit(widget.purpose, 'Purpose'),
              ),
            ],
          ),

          // Row(
          //   children: [
          //     Expanded(
          //       child: ElevatedButton(
          //         onPressed: () {},
          //         child: Text('Search'),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _edit(String text, String lable) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lable,
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
