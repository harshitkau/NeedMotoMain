import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class VehicleBookingController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late CollectionReference _carsRef;
  late List<Map<String, dynamic>> _allCars = [];
  final RxList<Map<String, dynamic>> filteredCars =
      RxList<Map<String, dynamic>>([]);

  @override
  void onInit() {
    super.onInit();
    _carsRef = _firestore.collection('vehicles');
    _loadAllCars();
  }

  Future<void> _loadAllCars() async {
    final QuerySnapshot querySnapshot = await _carsRef.get();
    _allCars = querySnapshot.docs
        .map((doc) => doc.data() as Map<String, dynamic>)
        .toList();
    print(_allCars);
    filteredCars.addAll(_allCars);
  }

  void filterCars(String seatsString) {
    int seats = int.parse(seatsString);
    if (seats == 0) {
      filteredCars.assignAll(_allCars);
    } else if (seats == 6) {
      final List<Map<String, dynamic>> filtered =
          _allCars.where((car) => int.parse(car['seating']) >= seats).toList();
      filteredCars.assignAll(filtered);
    } else {
      final List<Map<String, dynamic>> filtered =
          _allCars.where((car) => int.parse(car['seating']) == seats).toList();
      filteredCars.assignAll(filtered);
      print(filteredCars);
    }
  }
}
