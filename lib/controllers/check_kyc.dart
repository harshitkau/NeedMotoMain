import 'package:cloud_firestore/cloud_firestore.dart';

class CheckKyc {
  static Future<bool> checkKycdone(String kycStatus) async {
    bool kyc = false;
    String user_id = "";

    await FirebaseFirestore.instance
        .collection("customer")
        .doc(user_id)
        .collection("kyc-docs")
        .doc('user-kyc-docs')
        .get()
        .then((value) {
      kyc = value.data().toString() != "null";
    });
    return kyc;
  }
}
