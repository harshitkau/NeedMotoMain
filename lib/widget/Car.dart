import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Car extends StatelessWidget {
  const Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 450,
        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),color: Colors.black54,),
        child: Column(
          children: [Padding(padding: EdgeInsets.all(15)),
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
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 50,),
                Container(
                  width: 25,
                  height: 25,
                  child: Image.asset('assets/rr.jpg'),
                ),
                SizedBox(width: 20,),
                Text('Rolls Royce',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                SizedBox(width: 100,),
                Text('4.5',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                Icon(Icons.star,color: Colors.orange,)
              ],
            ),
            SizedBox(height: 50,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.asset('assets/images/rr2.png'),
                )
              ],
            )
          ],
        ),
      );
  }
}
