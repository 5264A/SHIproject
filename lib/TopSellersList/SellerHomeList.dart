import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SellerhomeCardview.dart';

class SellersHomePageList extends StatefulWidget {
  const SellersHomePageList({super.key});

  @override
  State<SellersHomePageList> createState() => _SellersHomePageListState();
}

class _SellersHomePageListState extends State<SellersHomePageList> {
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
                      child: CardList(),
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