import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RequestRejected extends StatelessWidget {
  const RequestRejected({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      body: SafeArea(child:
      SingleChildScrollView(child:
      Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.white,),
              ),
              SizedBox(width: 50,),
              Text('Request has been sent to owner',style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [

              SizedBox(width: 160,),
              Container(width: 75,
                height: 75,
                child: Image.asset('assets/images/cross.png',color: Colors.white,),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [

              SizedBox(width: 60,),
              Text('Sorry for the inconveniece we have not found \n any vehicle with your details',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            child:
            Column(
              children: [Padding(padding: EdgeInsets.all(15)),
                Container(padding: EdgeInsets.all(15),
                  width: 380,
                  height: 50,
                  decoration: BoxDecoration(border:Border.all(color: Colors.black),borderRadius: BorderRadius.circular(20),color: Colors.grey.shade400),
                  child: Text('Maruthi swift / 5 Seater / 2000/-',textAlign: TextAlign.center,style: TextStyle(fontSize: 18),),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [Padding(padding: EdgeInsets.all(10)),
                    Column(
                      children: [Padding(padding: EdgeInsets.all(15)),
                        Container(
                          width: 150,
                          height: 10,
                          child: Text('From',textAlign: TextAlign.left,style: TextStyle(fontSize: 10),),
                        ),
                        Container(
                            width: 150,
                            height: 35,
                            child: TextField(
                                decoration: InputDecoration(hintText: 'hyderabad'))),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                      height: 10,
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.swap_horiz,color: Colors.orange,),),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [Padding(padding: EdgeInsets.all(15)),
                        Container(
                          width: 150,
                          height: 10,
                          child: Text('To',textAlign: TextAlign.left,style: TextStyle(fontSize: 10),),
                        ),
                        Container(
                            width: 150,
                            height: 35,
                            child: TextField(
                                decoration: InputDecoration(hintText: 'Chittoor'))),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [Padding(padding: EdgeInsets.all(10)),
                    Column(
                      children: [Padding(padding: EdgeInsets.all(15)),
                        Container(
                          width: 150,
                          height: 10,
                          child: Text('Pickup date and time ',textAlign: TextAlign.left,style: TextStyle(fontSize: 10),),
                        ),
                        Container(
                            width: 150,
                            height: 35,
                            child: TextField(
                                decoration: InputDecoration(hintText: '22-04-23'))),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                      height: 10,
                      child: IconButton(onPressed: () {  }, icon: Icon(Icons.calendar_month_outlined,color: Colors.orange,),),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [Padding(padding: EdgeInsets.all(15)),
                        Container(
                          width: 150,
                          height: 10,
                          child: Text('Drop date and time',textAlign: TextAlign.left,style: TextStyle(fontSize: 10),),
                        ),
                        Container(
                            width: 150,
                            height: 35,
                            child: TextField(
                                decoration: InputDecoration(hintText: '24-02-23'))),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [Padding(padding: EdgeInsets.all(10)),
                    Column(
                      children: [Padding(padding: EdgeInsets.all(15)),
                        Container(
                          width: 150,
                          height: 10,
                          child: Text('Home delivery or pickup',textAlign: TextAlign.left,style: TextStyle(fontSize: 10),),
                        ),
                        Container(
                            width: 150,
                            height: 35,
                            child: TextField(
                                decoration: InputDecoration(hintText: 'Pickup'))),
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [Padding(padding: EdgeInsets.all(15)),
                        Container(
                          width: 150,
                          height: 10,
                          child: Text('Purpose',textAlign: TextAlign.left,style: TextStyle(fontSize: 10),),
                        ),
                        Container(
                            width: 150,
                            height: 35,
                            child: TextField(
                                decoration: InputDecoration(hintText: 'Function'))),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ],
      ),
      ),

      ),
    );
  }
}
