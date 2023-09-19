import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FarmerhomeCardview.dart';

class FarmerHomepageListForSeller extends StatefulWidget {
  const FarmerHomepageListForSeller({super.key});

  @override
  State<FarmerHomepageListForSeller> createState() => _FarmerHomepageListForSellerState();
}

class _FarmerHomepageListForSellerState extends State<FarmerHomepageListForSeller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: FarmerCardList(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}