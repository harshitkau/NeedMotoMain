
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FromToDestinationTile extends StatelessWidget {
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController fromTimeController = TextEditingController();
  final TextEditingController toTimeController = TextEditingController();
  final TextEditingController pickupController = TextEditingController();
  final TextEditingController purposeController = TextEditingController();

  final RxBool isFromValid = false.obs;
  final RxBool isToValid = false.obs;
  final RxBool isFromTimeValid = false.obs;
  final RxBool isToTimeValid = false.obs;
  final RxBool isPickupValid = false.obs;
  final RxBool isPurposeValid = false.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        body: Container(
          height: 500,
          padding: EdgeInsets.all(16),
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
          child: TextField(
            controller: fromController,
            onChanged: (value) => isFromValid.value = value.isNotEmpty,
            decoration: InputDecoration(
              labelText: 'From',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
          SizedBox(width: 8),
          Icon(Icons.compare_arrows_sharp, color: Colors.orange),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
            controller: toController,
            onChanged: (value) => isToValid.value = value.isNotEmpty,
            decoration: InputDecoration(
            labelText: 'To',
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
                      ),
                  ),
                ),
              ),
            ],
          ),

            SizedBox(height: 16),
        //
        // // Second row with date and time fields
        //   Row(
        //     children: [
        //     Expanded(
        //       child: TextField(
        //         controller: fromTimeController,
        //         onChanged: (value) =>
        //         isFromTimeValid.value = value.isNotEmpty,
        //         decoration: InputDecoration(
        //         labelText: 'From Date and Time',
        //         border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(8),
        //           borderSide: BorderSide.none,
        //              ),
        //             ),
        //          ),
        //         ),
        //
        //       SizedBox(width: 8),
        //
        //      Icon(Icons.calendar_today_outlined, color: Colors.orange),
        //
        //       SizedBox(width: 8),
        //
        //       Expanded(
        //           child: TextField(
        //             controller: toTimeController,
        //             onChanged: (value) =>
        //             isToTimeValid.value = value.isNotEmpty,
        //             decoration: InputDecoration(
        //             labelText: 'To Date and Time',
        //               border: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(8),
        //               borderSide: BorderSide.none,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //
        // SizedBox(height: 16),
        // // Third row with "Pickup/Delivery" and "Purpose" fields
        // Row(
        //   children: [
        //     Expanded(
        //       child: TextField(
        //       controller: pickupController,
        //       onChanged: (value) =>
        //       isPickupValid.value = value.isNotEmpty,
        //         decoration: InputDecoration(
        //         labelText: 'Pickup/Delivery',
        //           border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(8),
        //           borderSide: BorderSide.none,
        //           ),
        //         ),
        //       ),
        //     ),
        //     SizedBox(width: 8),
        //     //Icon(Icons.compare_arrows_sharp, color: Colors.orange),
        //     SizedBox(width: 8),
        //     Expanded(
        //       child: TextField(
        //         controller: purposeController,
        //         onChanged: (value) => isPurposeValid.value = value.isNotEmpty,
        //         decoration: InputDecoration(
        //           labelText: 'Purpose',
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(8),
        //             borderSide: BorderSide.none,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

              // SizedBox(height: 16),
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
        ),
      ),
    );
  }
}

