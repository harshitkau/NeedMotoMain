import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/Request_Controller.dart';

class Request extends StatelessWidget {
  RequestController c = RequestController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Car(),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Specifications',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Seats',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '75',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Km/h',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '9.8',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'KMPL',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                      Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Diesel',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Owner Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Container(
                          width: 150,
                          height: 20,
                          child: Text(
                            'Ramu',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )),
                      Container(
                          width: 150,
                          height: 15,
                          child: Text(
                            '+91 9823743958',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.all(1),
            child: SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    'Book Now',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )),
            )));
  }
}
