import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/LocationData/getlocation.dart';
import 'package:projectwork/OrderList.dart';
import 'package:projectwork/OrderListSellerSection/OrderListBuyerSection.dart';

import '../../EducationList/Educationmain.dart';
import '../../StateListData/StateData.dart';
import '../../WoolEducation/WoolEducation.dart';
import '../MainPage/Homepage.dart';


class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  PageController pageController=PageController();
  List<Widget>pages=[HomePage(),StateData(),EducationList(),OrderList()];

  // int selectIndex=Item as int;
  void onPageChanged(int index){
    setState(() {
    //  selectIndex=index;
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
                icon: Icon(Icons.home,color: Color(0xffD27D2D) ,),
                label: 'Home',backgroundColor: Color(0xffD27D2D),),

            BottomNavigationBarItem(
                icon: Icon(Icons.price_change_outlined,color:Color(0xffD27D2D),),
                label: 'Wool-Price',backgroundColor: Color(0xffD27D2D),),



            BottomNavigationBarItem(
                icon: Icon(Icons.cast_for_education,color: Color(0xffD27D2D),),
                label: 'Education',backgroundColor: Color(0xffD27D2D),),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart,color: Color(0xffD27D2D),),
                label: 'Your Orders',backgroundColor: Color(0xffD27D2D),),
          ],
        ),
      ),
    );
  }
}
