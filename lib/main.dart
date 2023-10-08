import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:projectwork/BecomeSellerBox/SellerDetailsScreen.dart';
import 'package:projectwork/Buyer/MainPage/BuyerHomepage.dart';
import 'package:projectwork/Farmersection/Farmerbottom.dart';
import 'package:projectwork/Farmersection/Farmermain.dart';
import 'package:projectwork/MAINHOME.dart';
import 'package:projectwork/MidSeller/MainPage/Homepage.dart';

import 'package:projectwork/Profile/UserProfileScreen/UserProfileScreen.dart';
import 'package:projectwork/StateListData/StateData.dart';
import 'package:projectwork/TrackingSide/Trackingpage1.dart';
import 'package:projectwork/cart/cart.dart';
import 'package:projectwork/signuplogin.dart';



import 'Buyer/Navigationbar/BuyerBottombar.dart';
import 'MidSeller/Navigationbar/navigationbar.dart';
import 'WoolEducation/Testing/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:RealHome(),
    );
  }
}
