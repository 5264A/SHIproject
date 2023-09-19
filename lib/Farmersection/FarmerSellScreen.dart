
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../BecomeSellerBox/SellerDetailsScreen.dart';


class FarmerSellerScreen extends StatefulWidget {
  const FarmerSellerScreen({Key? key}) : super(key: key);

  @override
  State<FarmerSellerScreen> createState() => _FarmerSellerScreenState();
}

class _FarmerSellerScreenState extends State<FarmerSellerScreen> {
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
                width: 370,
                //width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 21, 136, 230),
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
                      Row(
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
                          SizedBox(width: 15,),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.list_alt_outlined,
                              color: Color.fromARGB(255, 21, 136, 230),
                              size: 35,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Become Seller",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Sell Your Product Here!",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      )
                    ]),
              ),
            ),

          ],
        ),);
  }
}
