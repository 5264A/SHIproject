import 'package:flutter/material.dart';
import 'package:projectwork/Farmersection/Farmerbottom.dart';
import 'package:projectwork/Farmersection/Farmermain2.dart';
import 'package:projectwork/Openpageforbuyers/openpage.dart';

import 'package:share_plus/share_plus.dart';

import '../MidSeller/MainPage/FoodPageBody.dart';
import '../OrderSection/Orderlist.dart';
import '../Profile/ProfileScreen.dart';
import '../Profile/UserProfileScreen/UserProfileScreen.dart';
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
  static const String path = "lib/src/pages/navigation/drawer2.dart";
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;
  @override
  Widget build(BuildContext context) {



    return   Scaffold(
      key: _key,
      appBar: AppBar(
        title: const Text('Farmer View'),

        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
      body:Container(

        child: Column(
          children: [

            Container(

              //color: Colors.redAccent,
              color: Color(0xffEADDCA),


              padding: EdgeInsets.only(left:20,right:10),
              // margin: EdgeInsets.only(top: 10),


              child: Container(
                margin: EdgeInsets.only(top:0 ),

              ),),




            SizedBox(height: 8,),

            Expanded(child: SingleChildScrollView(child:Farmermain2(),),),



          ],),

      ),
    );
  }
  /*body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            const SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            const SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ],
        ),
      ),*/

  _buildDrawer() {
    //final String image = images[0];
    return ClipPath(
    //  clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: const [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.deepOrange])),
                    child: CircleAvatar(
                      radius: 40,
                     // backgroundImage: Ass,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    "erika costell",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@erika07",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  const SizedBox(height: 30.0),
                  InkWell(child: _buildRow(Icons.home, "Home"),
                    onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context)=>FarmerBottombar())),
                  ),
                  _buildDivider(),
                  InkWell(child: _buildRow(Icons.person_pin, "Home"),
                    onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context)=>UserDataScreen())),
                  ),
                  _buildDivider(),
                  InkWell(child: _buildRow(Icons.shopping_cart, "Your Order"), onTap: () =>Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderList())),

                  ),
                  _buildDivider(),
                  InkWell(child: _buildRow(Icons.share_outlined, "Share"), onTap: () => Share.share('com.example.projectwork'),),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "Notifications",
                      showBadge: true),
                  _buildDivider(),
                  InkWell(child: _buildRow(Icons.settings, "Settings"), //onTap: () => Share.share('com.example.projectwork'),
                   ),
                  _buildDivider(),
                  InkWell(child: _buildRow(Icons.email, "Contact us"),// onTap: () => Share.share('com.example.projectwork'),
                  ),
                  _buildDivider(),
                  InkWell(child: _buildRow(Icons.info_outline, "Help"), //onTap: () => Share.share('com.example.projectwork'),
                   ),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: active,
        ),
        const SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        const Spacer(),
        if (showBadge)
          Material(
            color: Colors.deepOrange,
            elevation: 5.0,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                "10+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ]),
    );
  }
}