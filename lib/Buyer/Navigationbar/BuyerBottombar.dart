import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/LocationData/getlocation.dart';

import '../../EducationList/Educationmain.dart';
import '../../StateListData/StateData.dart';
import '../../WoolEducation/WoolEducation.dart';
import '../MainPage/BuyerHomepage.dart';


class BuyerBottombar extends StatefulWidget {
  const BuyerBottombar({Key? key}) : super(key: key);

  @override
  State<BuyerBottombar> createState() => _BuyerBottombarState();
}

class _BuyerBottombarState extends State<BuyerBottombar> {
  PageController pageController=PageController();
  List<Widget>pages=[BuyerHomePage(),StateData(),EducationList(),GetLocation()];

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
          backgroundColor: Colors.white,
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
                icon: Icon(Icons.home,),
                label: 'Home',backgroundColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
