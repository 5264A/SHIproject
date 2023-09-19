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

  // int selectIndex=0;
  void onPageChanged(int index){
    setState(() {
      // selectIndex=index;
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
          backgroundColor: Colors.lightBlue,
          type: BottomNavigationBarType.fixed,

          onTap: onItemTap,
          items: [

            BottomNavigationBarItem(
                icon: Icon(Icons.home,),
                label: 'Home',backgroundColor: Colors.blue),

            BottomNavigationBarItem(
                icon: Icon(Icons.price_change_outlined,),
                label: 'Wool-Price',backgroundColor: Colors.blue),



            BottomNavigationBarItem(
                icon: Icon(Icons.cast_for_education,),
                label: 'Education',backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt_outlined,),
                label: 'Shearer-List',backgroundColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
