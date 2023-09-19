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

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>FarmerBottombar()));
            },
              child: Text('Farmer'),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Bottombar()));
            },
              child: Text('Trader'),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>BuyerBottombar()));
            },
              child: Text('Buyers'),
            ),


    ],
        ),
      ),
    );
  }
}
