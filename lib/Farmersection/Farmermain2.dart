import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/Farmersection/FarmerSellScreen.dart';


import '../Garph/Graphs.dart';

import '../MidSeller/MainPage/gridview.dart';

import '../TopSellersList/SellerHomeList.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';
import 'Garph/Graphs.dart';

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
  List<double> weeklySummary = [4.40, 2.50, 42.42, 10.50, 100.20, 88.99, 99.10];
  Widget build(BuildContext context) {
    return


      Expanded(
        child:SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Divider(),
              //Icon Container
              Container(
                height: 250,
                width: double.infinity,

                /* child: Image.asset('assets/farmermain.png',fit: BoxFit.cover, height: 250.0,
                   width: 200,),*/

                child: ClipRRect(


                  // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight:Radius.circular(10)),


                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25)),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.redAccent,
                        ),
                        child: Image.asset('assets/farmermain.png', fit: BoxFit.cover)),
                  ),
                ),
              ),

              //Divider(),
              const SizedBox(height: 18,),
              BigText(text: 'Sell Your Product'),
              const Padding(
                padding: EdgeInsets.only(left:120.0,right: 120.0),
                child: Divider(height: 4,color: Colors.grey,),
              ),

              // IF Else Conditioon is left--------------------------------------------------------------------------
              SizedBox(height: 18,),
              // Divider(),
              FarmerSellerScreen(),

              SizedBox(height: 17,),


              BigText(text: 'News & Trends'),
             const Padding(
               padding: EdgeInsets.only(left:140.0,right: 140.0),
               child: Divider(height: 4,color: Colors.grey,),
             ),


              const SizedBox(height: 18,),

              const SliderScreen(),
              const SizedBox(height:17,),
              BigText(text: 'Price'),
              const Padding(
                padding: EdgeInsets.only(left:180.0,right: 180.0),
                child: Divider(height: 4,color: Colors.grey,),
              ),

              Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 220,
                      decoration: BoxDecoration(
                       // border: Border.all(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:

                          MyBarGraphFarmer(weeklysummary: weeklySummary,),



                  ),
                  SmallText(text: 'Slide Left For Raw And Fresh Wool Price >>>'),
                ],
              ),



              SizedBox(height: 18,),



              BigText(text: 'Top-Traders'),
              const Padding(
                padding: EdgeInsets.only(left:150.0,right: 150.0),
                child: Divider(height: 4,color: Colors.grey,),
              ),
              Divider(),
              //SELLERS LIST ALSO CONTAINS IN IF_ELSE;
              Container(

                width: double.infinity,
                height: 260,

                child: SellersHomePageList(),

              ),







            ],


          ),),
      );
  }
}