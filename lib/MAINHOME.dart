import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/Buyer/Navigationbar/BuyerBottombar.dart';
import 'package:projectwork/Farmersection/Farmerbottom.dart';
import 'package:projectwork/Farmersection/Farmermain.dart';
import 'package:projectwork/MidSeller/MainPage/Homepage.dart';

import 'MidSeller/Navigationbar/navigationbar.dart';

class RealHome extends StatefulWidget {
  const RealHome({Key? key}) : super(key: key);

  @override
  State<RealHome> createState() => _RealHomeState();
}

class _RealHomeState extends State<RealHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>FarmerBottombar()));
              },
                child: Text('Farmer'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEADDCA),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Bottombar()));
              },
                child: Text('Trader'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>BuyerBottombar()));
              },
                child: Text('Buyers'),
              ),
            ),


    ],
        ),
      ),
    );
  }
}
