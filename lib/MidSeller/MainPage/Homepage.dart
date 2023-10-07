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

              //color: Colors.redAccent,
              color: Color(0xffEADDCA),


              padding: EdgeInsets.only(left:20,right:10),
              // margin: EdgeInsets.only(top: 10),


              child: Container(
                margin: EdgeInsets.only(top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children:[
                            Icon(Icons.location_on,size: 18,),

                            //if(boolll==true)getLatLong(),
                            BigText(text: "Hec-Admin",color: Colors.black,size: 20,),
                            Icon(Icons.arrow_downward_outlined,size: 17,),
                          ],
                        ),
                        Row(
                          children:[
                            SmallText(text: "Ranchi",color: Colors.black87,),
                          ],),
                      ],

                    ),

                    IconButton(
                      padding: EdgeInsets.only(bottom: 10),
                      icon: Icon(Icons.menu_outlined),

                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileClick()));
                        /* Your code */
                      },
                    ),

                  ],),
              ),),




            SizedBox(height: 8,),

            Expanded(child: SingleChildScrollView(child:FoodPageBody(),),),



      ],),
        ),





      ),
    );
    }


}
