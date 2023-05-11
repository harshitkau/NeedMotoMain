import 'package:flutter/material.dart';

import '../objects/form.dart';
import '../objects/fromtotile.dart';
import '../objects/myappbar.dart';
import '../objects/pickupdeliverypurpose.dart';
import '../objects/userchoiceseats.dart';
import '../objects/vehicleTile.dart';

class seventh extends StatefulWidget {
  const seventh({Key? key}) : super(key: key);

  @override
  State<seventh> createState() => _seventhState();
}

class _seventhState extends State<seventh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),

              // FormTile(),
            ],
          ),
        ),
      ),
    );
  }
}
