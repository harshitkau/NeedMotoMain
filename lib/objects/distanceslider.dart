import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistanceSlider extends StatelessWidget {
  final double minValue;
  final double maxValue;
  final int divisions;

  DistanceSlider({this.minValue = 50.0, this.maxValue = 100.0, this.divisions = 10});

  @override
  Widget build(BuildContext context) {
    final sliderController = Get.put(DistanceSliderController());

    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 10.0,),
        Obx(() => Container(
          margin: EdgeInsets.only(left: 10.0),
          child: Text(
            'Km Range, per day  ${sliderController.sliderValue.value.toStringAsFixed(1)} km',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        )),
        Row(
          children: [
            Obx(() => SizedBox(
              width: 265.0,
              child: Slider(
                value: sliderController.sliderValue.value,
                min: minValue,
                max: maxValue,
                divisions: divisions,
                label: sliderController.sliderValue.value.toStringAsFixed(1),
                onChanged: (newValue) {
                  sliderController.sliderValue.value = newValue;
                },
              ),
            ),
          ),

            Obx(() =>
                Container
                  (
                  padding: EdgeInsets.all(10.0),
                  child: Text('${sliderController.sliderValue.value.toStringAsFixed(1)} km'),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.blue),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.blue[100],
                  ),

                ),
            ),
          ],
        ),

      ],
    );
  }
}

class DistanceSliderController extends GetxController {
  var sliderValue = 50.0.obs;
}
