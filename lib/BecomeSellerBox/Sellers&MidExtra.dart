import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/TrackingSide/Trackingpage1.dart';

import 'SellerDetailsScreen.dart';


class Sellersextra extends StatefulWidget {
  const Sellersextra({Key? key}) : super(key: key);

  @override
  State<Sellersextra> createState() => _SellersextraState();
}

class _SellersextraState extends State<Sellersextra> {
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return
    Material(

     child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>SellersDetailsSceen()));
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 180,
            decoration: BoxDecoration(
                color: Color(0xffEADDCA),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.sell_rounded,
                      color: Color.fromARGB(255, 21, 136, 230),
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Become Seller",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Sell Your Product Here!",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )
                ]),
          ),
        ),
        InkWell(
          onTap: () {
             Navigator.push(context,MaterialPageRoute(builder: (context)=>Trackingpage1()));
          },
          child: Container(
            height: 180,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 251, 252, 252),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    spreadRadius: 1,
                  )
                ]),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 21, 136, 230),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.track_changes_rounded,
                      color: Color.fromARGB(255, 247, 248, 250),
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "InterNet Tracking",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 1, 8, 14),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Track Your Product Here",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 6, 10),
                        fontSize: 14),
                  )
                ]),
          ),
        )
      ],
    ),);
  }
}
