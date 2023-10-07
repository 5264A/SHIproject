import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/Garph/Graphs.dart';
import 'package:projectwork/MidSeller/FarmersList.dart';
import 'package:projectwork/MidSeller/SellersList/newsellerlist.dart';
import 'package:projectwork/OrderListSellerSection/OrderListBuyerSection.dart';
import 'package:projectwork/TrackingSide/Trackingpage1.dart';

import 'package:projectwork/widgets/big_text.dart';
import 'package:projectwork/widgets/small_text.dart';
import '../../BecomeSellerBox/Sellers&MidExtra.dart';
import '../TopFarmerList/FarmerHomeListforseller.dart';
import 'gridview.dart';

class FoodPageBody extends StatefulWidget {


  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
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
                      child: Image.asset('assets/handyman.jpg', fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(height: 18,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                      child: Column(

                        children: [
                          InkWell(
                            child: CircleAvatar(
                              child: Image.asset('assets/delivery-truck.png'),
                            ),
                            onTap: (){print('hello');},
                          ),
                          SmallText(text: 'Logistic',)],)),
                  Container(

                      child: Column(
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              child: Image.asset('assets/warehouse.png'),
                            ),
                            onTap: (){print('hello');},
                          ),

                          SmallText(text: 'warehouse')],)),
                  Container(

                      child: Column(
                        children: [
                         InkWell(
                           child: CircleAvatar(
                             child: Image.asset('assets/tracking.png'),
                           ),
                           onTap: (){
                             Navigator.push(context,MaterialPageRoute(builder: (context)=>Trackingpage1()));
                           },
                         ),

                          SmallText(text: 'Logistic')],)),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          child: Image.asset('assets/shopping-list.png'),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>FarmersListDisplayonSeller()));
                        },
                      ),

                      SmallText(text: 'Farmers-List')],),

                ],
              ),
            ),

            SizedBox(height: 17,),
            BigText(text: 'Become-Buyer'),
            const Padding(
              padding: EdgeInsets.only(left:140.0,right: 140.0),
              child: Divider(height: 5,color: Colors.grey,),
            ),
            SizedBox(height: 18,),
            // Divider(),
            Sellersextra(),
            const SizedBox(height: 18,),
            //Divider(),
            BigText(text: 'News & Trends'),
            const Padding(
              padding: EdgeInsets.only(left:140.0,right: 140.0),
              child: Divider(height: 4,color: Colors.grey,),
            ),


            const SizedBox(height: 17,),

            const SliderScreen(),
            const SizedBox(height:18,),
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

                  MyBarGraph(weeklysummary: weeklySummary,),



                ),
                SmallText(text: 'Slide Left For Raw And Fresh Wool Price'),
              ],
            ),



            SizedBox(height: 12,),


              SizedBox(height: 10,),





                BigText(text: 'Top-Farmers'),
                const Padding(
              padding: EdgeInsets.only(left:160.0,right: 160.0),
               child: Divider(height: 4,color: Colors.grey,),
              ),
                Divider(),
                //SELLERS LIST ALSO CONTAINS IN IF_ELSE;
            const SizedBox(
              width: double.infinity,
              height: 260,
              child: FarmerHomepageListForSeller(),

            ),







          ],


        ),),
      );
  }
}