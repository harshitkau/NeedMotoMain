import 'package:flutter/material.dart';

import '../widget/form.dart';
import '../widget/fromtotile.dart';
import '../widget/myappbar.dart';
import '../widget/pickupdeliverypurpose.dart';
import '../widget/userchoiceseats.dart';
import '../widget/vehicleTile.dart';

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
