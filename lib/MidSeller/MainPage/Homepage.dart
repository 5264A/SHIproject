import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import 'package:projectwork/widgets/small_text.dart';

import '../../Profile/ProfileScreen.dart';
import '../../widgets/big_text.dart';
import 'FoodPageBody.dart';
import 'gridview.dart';
import '../Navigationbar/navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
//uses for get text search
void _runFilter(String enteredKeyword) {
  List<Map<String, dynamic>> results = [];
  if (enteredKeyword.isEmpty) {
    // if the search field is empty or only contains white-space, we'll display all users
    //results = _allUsers;
  } else {
    //results = _allUsers
       // .where((user) =>
       // user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
      //  .toList();
    // we use the toLowerCase() method to make it case-insensitive
  }

  // Refresh the UI

}


class _HomePageState extends State<HomePage> {






  @override
  Widget build(BuildContext context) {

   

    return  SafeArea(

      
        child: Scaffold(

          body:Container(

            child: Column(
            children: [

            Container(

              height: 200,
              color: Colors.grey,



            //padding: EdgeInsets.only(left:20,right: 20),
           // margin: EdgeInsets.only(top: 10),

            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
              children: [
              Row(
              children:[


              Icon(Icons.location_on),

                //if(boolll==true)getLatLong(),


              BigText(text: "Sri-Lunka",color: Colors.white,size: 20,),
              Icon(Icons.arrow_downward_outlined),
              ],
              ),
              Row(
              children:[
              SmallText(text: "Ranchi",color: Colors.white,),
              ],),
              ],

              ),

              Container(
                margin: EdgeInsets.only(bottom: 170),
                child: IconButton(

                  //padding: const EdgeInsets.only(right: 0),
                  onPressed: () {
                  },  icon:Icon(Icons.menu_rounded),),
              ),





              ],),
            ),),

            Padding(
        padding: const EdgeInsets.all(10.0),

        ),
              SizedBox(height: 8,),

              Expanded(child: SingleChildScrollView(child:FoodPageBody(),),),



        ],),
          ),





        ),

    );
    }


}
