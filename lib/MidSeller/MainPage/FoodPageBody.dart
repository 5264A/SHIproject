import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/Garph/Graphs.dart';
import 'package:projectwork/MidSeller/SellersList/newsellerlist.dart';
import 'package:projectwork/OrderListSellerSection/OrderListBuyerSection.dart';
import 'package:projectwork/TopFarmerList/FarmerHomeListforseller.dart';
import 'package:projectwork/widgets/big_text.dart';
import 'package:projectwork/widgets/small_text.dart';
import '../../BecomeSellerBox/Sellers&MidExtra.dart';
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
              margin: EdgeInsets.only(left: 20, right: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(

                      child: Column(

                        children: [
                          InkWell(
                            child: CircleAvatar(
                              child: Image.asset('assets/warehouse.png'),
                            ),
                            onTap: (){print('hello');},
                          ),
                          SmallText(text: 'Logistic',)],)),
                  Container(

                      child: Column(
                        children: [
                          InkWell(
                            child: CircleAvatar(
                              child: Image.asset('assets/delivery-truck.png'),
                            ),
                            onTap: (){print('hello');},
                          ),

                          SmallText(text: 'Logistic')],)),
                  Container(

                      child: Column(
                        children: [
                         InkWell(
                           child: CircleAvatar(
                             child: Image.asset('assets/delivery-truck.png'),
                           ),
                           onTap: (){print('hello');},
                         ),

                          SmallText(text: 'Logistic')],)),
                  Column(
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          child: Image.asset('assets/shopping-list.png'),
                        ),
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderListSellerSection()));
                        },
                      ),

                      SmallText(text: 'Farmers-List')],),

                ],
              ),
            ),
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
                BigText(text: 'Become-Buyer'),

                // IF Else Conditioon is left--------------------------------------------------------------------------
                SizedBox(height: 10,),
               // Divider(),
                Sellersextra(),

                SizedBox(height: 10,),

                BigText(text: 'Top-Farmers'),
                Divider(),
                //SELLERS LIST ALSO CONTAINS IN IF_ELSE;
            const SizedBox(
              width: double.infinity,
              height: 220,
              child: FarmerHomepageListForSeller(),

            ),







          ],


        ),),
      );
  }
}