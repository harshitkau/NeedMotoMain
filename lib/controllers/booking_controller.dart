import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import '../model/Request_model.dart';

class BookingColntroller extends GetxController {
  static BookingColntroller instance = Get.find();

  void booking(String from, String to, String pickupDate, String dropDate,
      String delivery, String purpose) async {
    try {
      if (from.isNotEmpty &&
          to.isNotEmpty &&
          pickupDate.isNotEmpty &&
          dropDate.isNotEmpty &&
          delivery.isNotEmpty &&
          purpose.isNotEmpty) {
        data booking = data(
          from: from,
          to: to,
          uid: FirebaseAuth.instance.currentUser!.uid,
          pickupDate: pickupDate,
          dropDate: dropDate,
          delivery: delivery,
          purpose: purpose,
        );

        await FirebaseFirestore.instance
            .collection('bookings')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .set(booking.toJson());
      } else {
        Get.snackbar("Error Occurred", "Please Enter all feilds");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error Occurred", e.toString());
    }
  }
}
