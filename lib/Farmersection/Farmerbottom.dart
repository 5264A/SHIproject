import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/Farmersection/Farmermain.dart';


import '../EducationList/Educationmain.dart';

import '../LocationData/getlocation.dart';
import '../StateListData/StateData.dart';
import 'FarmerShearerList.dart';

class FarmerBottombar extends StatefulWidget {
  const FarmerBottombar({Key? key}) : super(key: key);

  @override
  State<FarmerBottombar> createState() => _FarmerBottombarState();
}

class _FarmerBottombarState extends State<FarmerBottombar> {
  PageController pageController=PageController();
  List<Widget>pages=[FarmerHomePage(),StateData(),EducationList(),FarmerShearerList()];

   int selectIndex=0;
  void onPageChanged(int index){
    setState(() {
        selectIndex=index;
    });
  }

  void onItemTap(int selectedItems){
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          children: pages,
          onPageChanged: onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white38,
          type: BottomNavigationBarType.fixed,

          onTap: onItemTap,
          items: [

            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Color(0xff006400),),
                label: 'Home',backgroundColor: Colors.redAccent),

            BottomNavigationBarItem(
                icon: Icon(Icons.price_change_outlined,color: Color(0xff006400),),
                label: 'Wool-Price',backgroundColor: Colors.redAccent,),



            BottomNavigationBarItem(
                icon: Icon(Icons.cast_for_education,color: Color(0xff006400),),
                label: 'Education',),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined,color: Color(0xff006400),),
                label: 'Shearer-List',),
          ],
        ),
      ),
    );
  }
}
