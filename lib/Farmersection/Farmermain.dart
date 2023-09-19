import 'package:flutter/material.dart';
import 'package:projectwork/Farmersection/Farmermain2.dart';

import '../Profile/ProfileScreen.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';


class FarmerHomePage extends StatefulWidget {
  const FarmerHomePage({Key? key}) : super(key: key);

  @override
  State<FarmerHomePage> createState() => _FarmerHomePageState();
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


class _FarmerHomePageState extends State<FarmerHomePage> {






  @override
  Widget build(BuildContext context) {



    return  SafeArea(


      child: Scaffold(


        body:Container(

         // color: Colors.transparent,

          child: Column(

            children: [

              Container(


                padding: EdgeInsets.only(left:20,right: 20),
                margin: EdgeInsets.only(top: 10),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children:[


                            Icon(Icons.location_on),

                            //if(boolll==true)getLatLong(),


                            BigText(text: "Sri-Lunka",color: Colors.blueAccent,size: 20,),
                            Icon(Icons.arrow_downward_outlined),
                          ],
                        ),
                        Row(
                          children:[
                            SmallText(text: "Ranchi",color: Colors.black26,),
                          ],),
                      ],

                    ),

                    IconButton(
                      icon: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Icon(Icons.menu_outlined),
                      ),
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileClick()));
                        /* Your code */
                      },
                    ),

                  ],),),


              SizedBox(height: 8,),

              Expanded(child: SingleChildScrollView(child:Farmermain2(),),),



            ],),
        ),





      ),

    );
  }


}
