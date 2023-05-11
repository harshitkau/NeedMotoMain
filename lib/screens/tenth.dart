import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/filecontroller.dart';
import '../controllers/imagecontroller.dart';
import '../widget/kyc_appbar.dart';
import '../widget/kycdocupload.dart';
import '../widget/submitbutton.dart';
import '../widget/tilefordocument.dart';
import '../widget/kycwarning.dart';
import '../widget/uploadtiledoc.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Tenth extends StatefulWidget {
  Tenth({
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
  State<Tenth> createState() => _TenthState();
}

class _TenthState extends State<Tenth> {
  final imageController = Get.put(ImageController());
  final FileController fileController =
      Get.put(FileController('qFm8nd1BODSFfJLEsGNFLzjbOiN2'));

  //ref for storage for storing kyc docs
  // final storageRef = firebase_storage.FirebaseStorage.instance.ref().child('user-kyc-docs');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.put(FileController('qFm8nd1BODSFfJLEsGNFLzjbOiN2'), tag: 'user-docs');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KycAppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Please upload documents to complete KYC',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final pickedFile = await ImagePicker()
                          .pickImage(source: ImageSource.gallery);
                      if (pickedFile != null) {
                        final file = File(pickedFile.path);
                        imageController.updateImage(file);
                        fileController.addFile(file);
                      }
                    },
                    child: Obx(
                      () => Container(
                        width: 150,
                        height: 150,
                        //color:Colors.grey,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey,
                          image: DecorationImage(
                            image: imageController.image.value != null
                                ? FileImage(imageController.image.value!)
                                : NetworkImage(
                                        'https://i.pinimg.com/736x/0b/0e/d9/0b0ed9b43e39d27a7e41beff4fe2e45b.jpg')
                                    as ImageProvider<Object>,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Upload Photo',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              KycUploadDocumentTile(
                  fileName: 'Your Licence Front',
                  fileController: fileController),
              SizedBox(
                height: 10.0,
              ),
              KycUploadDocumentTile(
                  fileName: 'Your Licence Back',
                  fileController: fileController),
              SizedBox(
                height: 10.0,
              ),
              KycUploadDocumentTile(
                  fileName: 'Your Aadhaar Front',
                  fileController: fileController),
              SizedBox(
                height: 10.0,
              ),
              KycUploadDocumentTile(
                  fileName: 'Your Aadhaar Back',
                  fileController: fileController),
              SizedBox(
                height: 10.0,
              ),
              KycUploadDocumentTile(
                  fileName: 'Cancel Cheque', fileController: fileController),
              SizedBox(
                height: 10.0,
              ),
              KycUploadDocumentTile(
                  fileName: 'PAN Card', fileController: fileController),
              SizedBox(height: 30.0),
              KycWarning(),
              SizedBox(
                height: 10.0,
              ),
              SubmitButton(
                seats: widget.seats,
                vehicleLocation: widget.vehicleLocation,
                source: widget.source,
                destination: widget.destination,
                pickupDateTime: widget.pickupDateTime,
                returnDateTime: widget.returnDateTime,
                delivery: widget.delivery,
                purpose: widget.purpose,
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
