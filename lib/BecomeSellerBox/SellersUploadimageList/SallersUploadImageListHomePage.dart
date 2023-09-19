import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SallersUploadImageList.dart';

class SallersUploadImageListHome extends StatefulWidget {
  const SallersUploadImageListHome({super.key});

  @override
  State<SallersUploadImageListHome> createState() => _SallersUploadImageListHomeState();
}

class _SallersUploadImageListHomeState extends State<SallersUploadImageListHome> {
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
                height: 130,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child:SellersUploadcardview());

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