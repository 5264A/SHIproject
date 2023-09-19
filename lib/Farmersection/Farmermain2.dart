import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/Farmersection/FarmerSellScreen.dart';


import '../Garph/Graphs.dart';

import '../MidSeller/MainPage/gridview.dart';

import '../TopSellersList/SellerHomeList.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';

class Farmermain2 extends StatefulWidget {


  @override
  State<Farmermain2> createState() => _Farmermain2State();
}

class _Farmermain2State extends State<Farmermain2> {
  var index100=false;
  List imageList1 = [
    {"id": 1, "image_path": 'assets/eventcopy.jpg'},
    {"id": 2, "image_path": 'assets/eventcopy.jpg'},
    {"id": 3, "image_path": 'assets/eventcopy.jpg'}
  ];


  final CarouselController carouselController = CarouselController();

  Widget build(BuildContext context) {
    return


      Expanded(
        child:SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Divider(),
              //Icon Container

              //Divider(),
              SizedBox(height: 12,),
              BigText(text: 'News & Trends'),
              SizedBox(height: 10,),

              SliderScreen(),
              SizedBox(height:15,),
              BigText(text: 'Price'),
              Container(
                  margin: EdgeInsets.all(10),
                  height: 220,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:
                  Container(
                    margin: EdgeInsets.all(10),
                    child:Graph(),)
              ),

              if(index100)
                SizedBox(height: 12,),
              BigText(text: 'Sell Your Product'),

              // IF Else Conditioon is left--------------------------------------------------------------------------
              SizedBox(height: 10,),
              // Divider(),
              FarmerSellerScreen(),

              SizedBox(height: 10,),

              BigText(text: 'Top-Traders'),
              Divider(),
              //SELLERS LIST ALSO CONTAINS IN IF_ELSE;
              const SizedBox(
                width: double.infinity,
                height: 220,
                child: SellersHomePageList(),

              ),







            ],


          ),),
      );
  }
}