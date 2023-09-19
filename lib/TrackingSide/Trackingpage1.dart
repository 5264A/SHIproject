import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/TrackingSide/Trackingpage2.dart';
import 'package:projectwork/widgets/big_text.dart';

class Trackingpage1 extends StatefulWidget {
  const Trackingpage1({Key? key}) : super(key: key);

  @override
  State<Trackingpage1> createState() => _Trackingpage1State();
}

class _Trackingpage1State extends State<Trackingpage1> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.grey,
        appBar:AppBar(

        leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),
    ),
          title: Text('Tracking Details'),
        ),

        body: Column(
          children: [

            SizedBox(height: 25,),
            TrackingPage2(),
          ],


      ),
    );
  }
}
