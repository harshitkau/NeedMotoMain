import 'package:cloud_firestore/cloud_firestore.dart';

class data {
  final String from;
  final String to;
  final String pickupDate;
  final String dropDate;
  final String delivery;
  final String purpose;
  String uid;

  data(
      {required this.uid,
      required this.from,
      required this.to,
      required this.pickupDate,
      required this.dropDate,
      required this.delivery,
      required this.purpose});

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "from": from,
        "to": to,
        "pickupDate": pickupDate,
        "dropDate": dropDate,
        "delivery": delivery,
        "purpose": purpose,
      };

  //Firebase(Map) - App(User)
  static data fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return data(
      uid: snapshot["uid"],
      from: snapshot['from'],
      to: snapshot["to"],
      pickupDate: snapshot["pickupDate"],
      dropDate: snapshot["dropDate"],
      delivery: snapshot["delivery"],
      purpose: snapshot["purpose"],
    );
  }
}
