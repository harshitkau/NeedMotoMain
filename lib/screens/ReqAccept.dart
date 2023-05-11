import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReqAccept extends StatelessWidget {
  const ReqAccept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade400,
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
                child: Image.asset('assets/images/tick.png',color: Colors.white,),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [

              SizedBox(width: 60,),
              Text('Your request have been approved from Owner.\n Check vehicle details and complet payment',textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(height: 15,),
          Container(
            width: double.infinity,
            height: 800,
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
                Card(
                  elevation: 10,
                  child: Container(
                      width: 325,
                      height: 300,
                    child: Column(
                      children: [Padding(padding: EdgeInsets.all(25)),
                        Row(
                          children: [
                            SizedBox(width: 130,),
                            Container(width: 50,height: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),child: Image.asset('assets/images/wheel.png'),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 113,),
                            Container(width: 150,height: 50,child: Text('Abhinandhan\n+91 9949494949'))
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Fuel type'),
                            SizedBox(width: 100,),
                            Text('Petrol')
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Vehicle number'),
                            SizedBox(width: 20,),
                            Text('TS08EC2505')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 150,
                      height: 50,
                      child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey.shade500,shape: StadiumBorder()),onPressed: () {}, child: Text('Pay',style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
                    SizedBox(width: 150,
                      height: 50,
                      child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,shape: StadiumBorder()),onPressed: () {}, child: Text('Cancle Ride',style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),),

      ),
    );
  }
}
