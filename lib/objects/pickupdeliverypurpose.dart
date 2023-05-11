import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickupDeliveryPurposeTile extends StatelessWidget {
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final RxBool isPickupDeliveryValid = false.obs;
  final RxBool isPurposeValid = false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   'From and To',
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     fontSize: 16,
          //   ),
          // ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: fromController,
                  onChanged: (value) => isPickupDeliveryValid.value = value.isNotEmpty,
                  decoration: InputDecoration(
                    labelText: 'Vehicle home delivery or Pickup',
                    //hintText: 'From',
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
                  onChanged: (value) => isPurposeValid.value = value.isNotEmpty,
                  decoration: InputDecoration(
                    labelText: 'Purpose',
                    //hintText: 'To',
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
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Search'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
